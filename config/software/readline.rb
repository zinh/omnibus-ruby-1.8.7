name "readline"

source url: "https://ftp.gnu.org/gnu/readline/readline-8.0.tar.gz", md5: "7e6c1f16aee3244a69aba6e438295ca3"

relative_path "readline-8.0"

build do
  env = with_standard_compiler_flags(with_embedded_path)
  command "./configure" \
	  " --prefix=#{install_dir}/embedded", env: env
  command "make", env: env
  command "make install", env: env
end
