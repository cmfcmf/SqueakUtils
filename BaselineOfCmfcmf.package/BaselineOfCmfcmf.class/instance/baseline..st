baseline
baseline: spec
<baseline>
	spec
		for: #'common'
		do: [
			spec
				project: 'FFI' with: [
					spec
						repository: 'http://www.squeaksource.com/MetacelloRepository';
						versionString: #'1.4-baseline';
						loads: #('Core')];
				package: 'Cmfcmf-WinFFI' with: [spec requires: 'FFI'];
				package: 'Cmfcmf-ToolBuilder';
				package: 'Cmfcmf-Utils' with: [spec requires: #('Cmfcmf-WinFFI' 'Cmfcmf-ToolBuilder')];
				yourself.
			spec
				group: 'default' with: #('Cmfcmf-Utils');
				group: 'toolbuilder' with: #('Cmfcmf-ToolBuilder');
				group: 'winffi' with: #('Cmfcmf-WinFFI')];    
		yourself