baseline
baseline: spec
<baseline>
	spec for: #'common' do: [
		spec
			package: 'FFI' with: [
				spec
					repository: 'http://www.squeaksource.com/MetacelloRepository';
					versionString: #development;
					className: 'ConfigurationOfFFI';
					loads: #('Core')].
		
		spec
			package: 'Cmfcmf-ToolBuilder';
			package: 'Cmfcmf-WinFFI' with: [spec requires: #('FFI')];
			package: 'Cmfcmf-Utils' with: [spec requires: #('Cmfcmf-WinFFI' 'Cmfcmf-ToolBuilder')].

		spec
			group: 'default' with: #('Cmfcmf-Utils');
			group: 'toolbuilder' with: #('Cmfcmf-ToolBuilder');
			group: 'winffi' with: #('Cmfcmf-WinFFI');
			yourself];    
	yourself