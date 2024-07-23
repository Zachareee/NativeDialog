require 'fiddle'
require_relative 'win_api'

include Win32API
include Fiddle

struct = Win32API::Openfilename.malloc
struct.lStructSize = Pointer[struct].size
struct.lpstrFile = Pointer.malloc 260 * 2
struct.nMaxFile = 260

bool = Win32API.GetOpenFileNameA struct

p struct.lpstrFile.to_s
puts bool
