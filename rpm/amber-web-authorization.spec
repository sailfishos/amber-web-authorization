Name: amber-web-authorization
License: BSD
Url:     https://github.com/sailfishos/amber-web-authorization
Version: 1.0.7
Release: 1
Source0: %{name}-%{version}.tar.bz2
Summary: Components to provide common OAuth flows
BuildRequires: pkgconfig(Qt5Core)
BuildRequires: pkgconfig(Qt5Network)
BuildRequires: pkgconfig(Qt5Qml)
BuildRequires: pkgconfig(Qt5Quick)
BuildRequires: qt5-qttools
BuildRequires: qt5-qttools-linguist
Requires: libamberwebauthorization = %{version}

%description
%{summary} allows applications to perform OAuth1 and OAuth2 requests.

%package ts-devel
Summary:   Translation source for amber-web-authorization
Requires:  %{name} = %{version}

%description ts-devel
%{summary}.

%package doc
Summary: Documentation for Amber Web Authorization framework
BuildRequires: sailfish-qdoc-template
BuildRequires: qt5-qttools-qthelp-devel
BuildRequires: qt5-tools

%description doc
%{summary}.

%package examples
Summary:  Example applications which use the Amber Web Authorization framework
Requires: %{name} = %{version}
Requires: sailfishsilica-qt5

%description examples
%{summary}.

%package -n libamberwebauthorization
Summary:   The Amber Web Authorization framework C++ library

%description -n libamberwebauthorization
%{summary}.

%package -n libamberwebauthorization-devel
Summary:  Amber Web Authorization framework development files
Requires: libamberwebauthorization = %{version}-%{release}

%description -n libamberwebauthorization-devel
%{summary}.

%files
%defattr(-,root,root,-)
%{_datadir}/translations/amber_web_authorization_eng_en.qm
%{_libdir}/qt5/qml/Amber/Web/Authorization/libamberwebauthorizationplugin.so
%{_libdir}/qt5/qml/Amber/Web/Authorization/qmldir
%{_libdir}/qt5/qml/Amber/Web/Authorization/plugins.qmltypes
%{_libdir}/qt5/qml/Amber/Web/Authorization/*.qml
%{_libdir}/qt5/qml/Amber/Web/Authorization/*.js

%files ts-devel
%defattr(-,root,root,-)
%{_datadir}/translations/source/amber_web_authorization.ts

%files doc
%defattr(-,root,root,-)
%dir %{_datadir}/doc/amber-web-authorization
%{_datadir}/doc/amber-web-authorization/*

%files examples
%defattr(-,root,root,-)
%{_bindir}/amberwebauthcppexample
%{_datadir}/amberwebauthqmlexample/amberwebauthqmlexample.qml

%files -n libamberwebauthorization
%defattr(-,root,root,-)
%{_libdir}/libamberwebauthorization.so.*

%files -n libamberwebauthorization-devel
%defattr(-,root,root,-)
%{_libdir}/libamberwebauthorization.so
%{_libdir}/pkgconfig/amberwebauthorization.pc
%{_includedir}/libamberwebauthorization/*

%prep
%autosetup -n %{name}-%{version}

%build
%qmake5 VERSION=%{version}
%make_build

%install
%qmake5_install
install -m 644 doc/html/%{name}.index %{buildroot}/%{_docdir}/%{name}/

%post -p /sbin/ldconfig
%postun -p /sbin/ldconfig
%post -n libamberwebauthorization -p /sbin/ldconfig
%postun -n libamberwebauthorization -p /sbin/ldconfig

