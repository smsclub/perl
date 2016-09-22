    #!/usr/bin/perl
    use LWP::UserAgent;
    use HTTP::Request::Common;

    my $userAgent = LWP::UserAgent->new(agent => 'perl post');
    my $login = "login";
    my $passwd = "pass";
    my $from = "SMS CLUB";
    my $url = "https://gate.smsclub.mobi/xml/";
    my $nums = "380675126767;380997777662";
    my $msg = "Sending SMS from SMS CLUB via perl";
    my $xml = "<?xml version='1.0' encoding='utf-8'?><request_sendsms><username><![CDATA[$login]]></username><password><![CDATA[$passwd]]></password><from><![CDATA[$from]]></from><to><![CDATA[$nums]]></to><text><![CDATA[$msg]]></text></request_sendsms>";
    my $ua = new LWP::UserAgent;
    my $req = $userAgent->request(POST $url, Content_Type => 'text/xml', Content => $xml);
    print $req->as_string;
