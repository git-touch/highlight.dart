// GENERATED CODE - DO NOT MODIFY BY HAND.
// ignore_for_file: file_names, non_constant_identifier_names

import '../highlight_core.dart';

/// Highlight.js language definition for `puppet`.
Mode puppet(Highlight hljs) {
  final Mode mode0 = Mode();
  final Mode mode1 = Mode();
  final Mode mode2 = Mode();
  final Mode mode3 = Mode();
  final Mode mode4 = Mode();
  final Mode mode5 = Mode();
  final Mode mode6 = Mode();
  final Mode mode7 = Mode();
  mode0.scope = r'comment';
  mode0.begin = r'#';
  mode0.end = r'$';
  mode0.contains = [mode1, mode2];
  mode1.scope = r'doctag';
  mode1.begin = r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)';
  mode1.end = r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):';
  mode1.excludeBegin = true;
  mode1.relevance = 0;
  mode2.begin =
      r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}";
  mode3.scope = r'variable';
  mode3.begin = r'\$([A-Za-z_]|::)(\w|::)*';
  mode4.scope = r'string';
  mode4.contains = [mode5, mode3];
  mode4.variants = [mode6, mode7];
  mode5.begin = r'\\[\s\S]';
  mode5.relevance = 0;
  mode6.begin = r"'";
  mode6.end = r"'";
  mode7.begin = r'"';
  mode7.end = r'"';
  return Mode(
    name: r'Puppet',
    aliases: [r'pp'],
    contains: [
      mode0,
      mode3,
      mode4,
      Mode(
        beginKeywords: r'class',
        end: r'\{|;',
        illegal: r'=',
        contains: [
          Mode(scope: r'title', begin: r'([A-Za-z_]|::)(\w|::)*', relevance: 0),
          mode0,
        ],
      ),
      Mode(
        beginKeywords: r'define',
        end: r'\{',
        contains: [
          Mode(scope: r'section', begin: r'[a-zA-Z]\w*', endsParent: true),
        ],
      ),
      Mode(
        begin: r'[a-zA-Z]\w*\s+\{',
        returnBegin: true,
        end: r'\S',
        contains: [
          Mode(scope: r'keyword', begin: r'[a-zA-Z]\w*', relevance: 0.2),
          Mode(
            begin: r'\{',
            end: r'\}',
            keywords: {
              r'keyword':
                  r'and case default else elsif false if in import enherits node or true undef unless main settings $string ',
              r'literal':
                  r'alias audit before loglevel noop require subscribe tag owner ensure group mode name|0 changes context force incl lens load_path onlyif provider returns root show_diff type_check en_address ip_address realname command environment hour monute month monthday special target weekday creates cwd ogoutput refresh refreshonly tries try_sleep umask backup checksum content ctime force ignore links mtime purge recurse recurselimit replace selinux_ignore_defaults selrange selrole seltype seluser source souirce_permissions sourceselect validate_cmd validate_replacement allowdupe attribute_membership auth_membership forcelocal gid ia_load_module members system host_aliases ip allowed_trunk_vlans description device_url duplex encapsulation etherchannel native_vlan speed principals allow_root auth_class auth_type authenticate_user k_of_n mechanisms rule session_owner shared options device fstype enable hasrestart directory present absent link atboot blockdevice device dump pass remounts poller_tag use message withpath adminfile allow_virtual allowcdrom category configfiles flavor install_options instance package_settings platform responsefile status uninstall_options vendor unless_system_user unless_uid binary control flags hasstatus manifest pattern restart running start stop allowdupe auths expiry gid groups home iterations key_membership keys managehome membership password password_max_age password_min_age profile_membership profiles project purge_ssh_keys role_membership roles salt shell uid baseurl cost descr enabled enablegroups exclude failovermethod gpgcheck gpgkey http_caching include includepkgs keepalive metadata_expire metalink mirrorlist priority protect proxy proxy_password proxy_username repo_gpgcheck s3_enabled skip_if_unavailable sslcacert sslclientcert sslclientkey sslverify mounted',
              r'built_in':
                  r'architecture augeasversion blockdevices boardmanufacturer boardproductname boardserialnumber cfkey dhcp_servers domain ec2_ ec2_userdata facterversion filesystems ldom fqdn gid hardwareisa hardwaremodel hostname id|0 interfaces ipaddress ipaddress_ ipaddress6 ipaddress6_ iphostnumber is_virtual kernel kernelmajversion kernelrelease kernelversion kernelrelease kernelversion lsbdistcodename lsbdistdescription lsbdistid lsbdistrelease lsbmajdistrelease lsbminordistrelease lsbrelease macaddress macaddress_ macosx_buildversion macosx_productname macosx_productversion macosx_productverson_major macosx_productversion_minor manufacturer memoryfree memorysize netmask metmask_ network_ operatingsystem operatingsystemmajrelease operatingsystemrelease osfamily partitions path physicalprocessorcount processor processorcount productname ps puppetversion rubysitedir rubyversion selinux selinux_config_mode selinux_config_policy selinux_current_mode selinux_current_mode selinux_enforced selinux_policyversion serialnumber sp_ sshdsakey sshecdsakey sshrsakey swapencrypted swapfree swapsize timezone type uniqueid uptime uptime_days uptime_hours uptime_seconds uuid virtual vlans xendomains zfs_version zonenae zones zpool_version',
            },
            relevance: 0,
            contains: [
              mode4,
              mode0,
              Mode(
                begin: r'[a-zA-Z_]+\s*=>',
                returnBegin: true,
                end: r'=>',
                contains: [Mode(scope: r'attr', begin: r'[a-zA-Z]\w*')],
              ),
              Mode(
                scope: r'number',
                begin:
                    r'(\b0[0-7_]+)|(\b0x[0-9a-fA-F_]+)|(\b[1-9][0-9_]*(\.[0-9_]+)?)|[0_]\b',
                relevance: 0,
              ),
              mode3,
            ],
          ),
        ],
        relevance: 0,
      ),
    ],
  );
}
