# frozen_string_literal: true

require 'fiddle'
require 'fiddle/import'
require 'fiddle/types'

# A comment
module Win32API
  extend Fiddle::Importer

  dlload 'Comdlg32'

  Openfilename = struct [
    'unsigned long lStructSize',
    'void* hwndOwner',
    'void* hInstance',
    'void* lpstrFilter',
    'void* lpstrCustomFilter',
    'unsigned long nMaxCustFilter',
    'unsigned long nFilterIndex',
    'void* lpstrFile',
    'unsigned long nMaxFile',
    'void* lpstrFileTitle',
    'unsigned long nMaxFileTitle',
    'void* lpstrInitialDir',
    'void* lpstrTitle',
    'unsigned long Flags',
    'unsigned short nFileOffset',
    'unsigned short nFileExtension',
    'void* lpstrDefExt',
    'void* lCustData',
    'void* lpfnHook',
    'void* lpTemplateName',
    'void* pvReserved',
    'unsigned long dwReserved',
    'unsigned long FlagsEx'
  ]

  extern 'bool GetOpenFileNameA(void* unnamedParam1)'
end
