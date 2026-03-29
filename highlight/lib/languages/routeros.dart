// GENERATED CODE - DO NOT MODIFY BY HAND.

import '../highlight_core.dart';

Mode routeros(Highlight hljs) {
  final Mode _mode0 = Mode();
  final Mode _mode1 = Mode();
  final Mode _mode2 = Mode();
  final Mode _mode3 = Mode();
  final Mode _mode4 = Mode();
  final Mode _mode5 = Mode();
  final Mode _mode6 = Mode();
  _mode0.scope = r'string';
  _mode0.begin = r'"';
  _mode0.end = r'"';
  _mode0.contains = [_mode1, _mode2, _mode5];
  _mode1.begin = r'\\[\s\S]';
  _mode1.relevance = 0;
  _mode2.scope = r'variable';
  _mode2.variants = [_mode3, _mode4];
  _mode3.begin = r'\$[\w\d#@][\w\d_]*';
  _mode4.begin = r'\$\{(.*?)\}';
  _mode5.scope = r'variable';
  _mode5.begin = r'\$\(';
  _mode5.end = r'\)';
  _mode5.contains = [_mode1];
  _mode6.scope = r'string';
  _mode6.begin = r"'";
  _mode6.end = r"'";
  return Mode(
    name: r'MikroTik RouterOS script',
    aliases: [r'mikrotik'],
    caseInsensitive: true,
    keywords: {
      r'$pattern': r':?[\w-]+',
      r'literal': r'true false yes no nothing nil null',
      r'keyword':
          r'foreach do while for if from to step else on-error and or not in :foreach :do :while :for :if :from :to :step :else :on-error :and :or :not :in :global :local :beep :delay :put :len :typeof :pick :log :time :set :find :environment :terminal :error :execute :parse :resolve :toarray :tobool :toid :toip :toip6 :tonum :tostr :totime',
    },
    contains: [
      Mode(
        variants: [
          Mode(begin: r'\/\*', end: r'\*\/'),
          Mode(begin: r'\/\/', end: r'$'),
          Mode(begin: r'<\/', end: r'>'),
        ],
        illegal: r'.',
      ),
      Mode(
        scope: r'comment',
        begin: r'^#',
        end: r'$',
        contains: [
          Mode(
            scope: r'doctag',
            begin: r'[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)',
            end: r'(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):',
            excludeBegin: true,
            relevance: 0,
          ),
          Mode(
            begin:
                r"[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}",
          ),
        ],
      ),
      _mode0,
      _mode6,
      _mode2,
      Mode(
        begin: r'[\w-]+=([^\s{}[\]()>]+)',
        relevance: 0,
        returnBegin: true,
        contains: [
          Mode(scope: r'attribute', begin: r'[^=]+'),
          Mode(
            begin: r'=',
            endsWithParent: true,
            relevance: 0,
            contains: [
              _mode0,
              _mode6,
              _mode2,
              Mode(
                scope: r'literal',
                begin: r'\b(true|false|yes|no|nothing|nil|null)\b',
              ),
              Mode(begin: r'("[^"]*"|[^\s{}[\]]+)'),
            ],
          ),
        ],
      ),
      Mode(scope: r'number', begin: r'\*[0-9a-fA-F]+'),
      Mode(
        begin:
            r'\b(add|remove|enable|disable|set|get|print|export|edit|find|run|debug|error|info|warning)([\s[(\]|])',
        returnBegin: true,
        contains: [Mode(scope: r'built_in', begin: r'\w+')],
      ),
      Mode(
        scope: r'built_in',
        variants: [
          Mode(
            begin:
                r'(\.\./|/|\s)((traffic-flow|traffic-generator|firewall|scheduler|aaa|accounting|address-list|address|align|area|bandwidth-server|bfd|bgp|bridge|client|clock|community|config|connection|console|customer|default|dhcp-client|dhcp-server|discovery|dns|e-mail|ethernet|filter|firmware|gps|graphing|group|hardware|health|hotspot|identity|igmp-proxy|incoming|instance|interface|ip|ipsec|ipv6|irq|l2tp-server|lcd|ldp|logging|mac-server|mac-winbox|mangle|manual|mirror|mme|mpls|nat|nd|neighbor|network|note|ntp|ospf|ospf-v3|ovpn-server|page|peer|pim|ping|policy|pool|port|ppp|pppoe-client|pptp-server|prefix|profile|proposal|proxy|queue|radius|resource|rip|ripng|route|routing|screen|script|security-profiles|server|service|service-port|settings|shares|smb|sms|sniffer|snmp|snooper|socks|sstp-server|system|tool|tracking|type|upgrade|upnp|user-manager|users|user|vlan|secret|vrrp|watchdog|web-access|wireless|pptp|pppoe|lan|wan|layer7-protocol|lease|simple|raw);?\s)+',
          ),
          Mode(begin: r'\.\.', relevance: 0),
        ],
      ),
    ],
  );
}
