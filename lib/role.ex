defmodule RoleWifiClient do
	def role(_tags \\ []) do
		%{
			# cmst/connman can actually bring up wireless networking properly
			# unlike all the other junk out there
			desired_packages: ["firmware-iwlwifi", "cmst", "wpasupplicant"],
			# Needed for wifi to work, at least on an HP 8460p running xenial
			# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=749201
			boot_time_kernel_modules: ["ccm", "ctr"]
		}
	end
end
