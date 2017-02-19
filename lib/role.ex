defmodule RoleWifiClient do
	def role(_tags \\ []) do
		%{
			# Needed for wifi to work, at least on an HP 8460p running xenial
			# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=749201
			boot_time_kernel_modules: ["ccm", "ctr"]
		}
	end
end
