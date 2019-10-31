name "ruby-1.8.7"

source url: "https://cache.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p374.tar.gz", md5: "b72a0bc5b824398537762e5272bbb8dc"

relative_path "ruby-1.8.7-p374"

dependency "zlib"

override :openssl, version: "1.0.1r"
dependency "openssl"

dependency "libffi"
dependency "libyaml"
dependency 'ncurses'
dependency 'gdbm'
dependency 'readline'

build do
  env = with_standard_compiler_flags(with_embedded_path)
  #patch source: "math_c.patch"
  #patch source: "ruby-openssl-1.0.0.patch"
  command "./configure" \
	  " --prefix=#{install_dir}/embedded", env: env
  command "make", env: env
  command "make install", env: env
end
