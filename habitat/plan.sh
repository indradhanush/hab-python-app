pkg_name=hab-python-app
pkg_origin=indradhanush
pkg_version="0.1.0"
pkg_maintainer="Indradhanush Gupta <indra@kinvolk.io>"
pkg_license=('Python-2.0')
pkg_source="https://github.com/indradhanush/${pkg_name}/archive/v${pkg_version}.tar.gz"
pkg_deps=( core/python )
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="348e82e816855fc323af9cbecc1ba8027b21c91298a22c2575450bae554f8ed8"
# pkg_deps=(core/glibc)
# pkg_build_deps=(core/make core/gcc)
# pkg_lib_dirs=(lib)
# pkg_include_dirs=(include)
# pkg_bin_dirs=(bin)
# pkg_pconfig_dirs=(lib/pconfig)
# pkg_svc_run="bin/haproxy -f $pkg_svc_config_path/haproxy.conf"
# pkg_exports=(
#   [host]=srv.address
#   [port]=srv.port
#   [ssl-port]=srv.ssl.port
# )
# pkg_exposes=(port ssl-port)
# pkg_binds=(
#   [database]="port host"
# )
# pkg_binds_optional=(
#   [storage]="port host"
# )
# pkg_interpreters=(bin/bash)
# pkg_svc_user="hab"
# pkg_svc_group="$pkg_svc_user"
# pkg_description="Some description."
# pkg_upstream_url="http://example.com/project-name"
