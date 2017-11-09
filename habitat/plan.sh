pkg_name=hab-python-app
pkg_origin=indradhanush
pkg_version="0.1.0"
pkg_maintainer="Indradhanush Gupta <indra@kinvolk.io>"
pkg_license=('Python-2.0')
pkg_source="https://github.com/indradhanush/${pkg_name}/archive/v${pkg_version}.tar.gz"
pkg_deps=(
    core/python
    core/git
    core/make
)
demo_pkg_dir="$HAB_CACHE_SRC_PATH/$pkg_name-$pkg_version"
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
# pkg_shasum="348e82e816855fc323af9cbecc1ba8027b21c91298a22c2575450bae554f8ed8"

do_download() {
    return 0
}

do_verify() {
    return 0
}

do_unpack() {
    set -x
    mkdir -p "$demo_pkg_dir/src"
    pushd "$demo_pkg_dir/src"
    git clone https://github.com/$pkg_origin/$pkg_name
    set +x
    return 0
}

do_prepare() {
    set -x
    pip install virtualenv
    virtualenv $pkg_prefix/venv
    source $pkg_prefix/venv/bin/activate
    set +x
}

do_build() {
    return 0
}

do_install() {
    set -x
    pushd "$demo_pkg_dir/src/$pkg_name"
    make install
    mkdir -p $pkg_prefix/src
    cp -r app/ quotes/ manage.py $pkg_prefix/src/
    popd
    set +x
}
