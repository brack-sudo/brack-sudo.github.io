if (typeof(tritonIdSync) != "object" || typeof(tritonIdSync.load_pixel) != "function") {
    var tritonIdSync = {
        load_pixel: function(src) {
            var img;
            if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)) {
                img = new Image();
            } else {
                img = document.createElement('img');
            }
            img.src = src;
            img.width = 0;
            img.height = 0;
            img.className = "triton-pixel";
            document.body.appendChild(img);
        },
        load_script: function(src) {
            var js = document.createElement('script');
            js.type = 'text/javascript';
            js.src = src;
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(js, s);
        }
    }
}

tritonIdSync.load_pixel("https://ib.adnxs.com/getuid?https://yield-op-idsync.live.streamtheworld.com/pixel.gif?partner=an&uid=$UID&pubId=25053");
tritonIdSync.load_pixel("https://nodeny.targetspot.com/callback/uuid?https://yield-op-idsync.live.streamtheworld.com/pixel.gif?partner=ts&uid=$UID&pubId=25053");
tritonIdSync.load_pixel("https://x.bidswitch.net/sync?ssp=triton&stn=ZenoAds");
tritonIdSync.load_pixel("https://match.adsrvr.org/track/cmf/generic?ttd_pid=tpqk5an&ttd_puid=ZenoAds");
tritonIdSync.load_pixel("https://ums.acuityplatform.com/tum?umid=133&uid=00e51a82-b0f3-45f9-8f58-e38f758e6a58&rurl=https%3A%2F%2Fyield-op-idsync.live.streamtheworld.com%2Fpixel.gif%3Fpartner%3Dacu%26uid%3D___AUID___%26pubId%3D25053");
tritonIdSync.load_pixel("https://rtb.adentifi.com/CookieSyncTriton?redirect=https%3A%2F%2Fyield-op-idsync.live.streamtheworld.com%2Fpixel.gif%3Fpartner%3Dadt%26uid%3D%24UID%26pubId%3D25053");
tritonIdSync.load_pixel("https://sync.mathtag.com/sync/img?mt_exid=70&redir=https%3A%2F%2Fyield-op-idsync.live.streamtheworld.com%2Fpixel.gif%3Fpartner%3Dmm%26uid%3D%5BMM_UUID%5D%26pubId%3D25053");
tritonIdSync.load_pixel("https://pixel-sync.sitescout.com/dmp/pixelSync?nid=107&redir=https%3A%2F%2Fyield-op-idsync.live.streamtheworld.com%2Fpixel.gif%3Fpartner%3Dcto%26uid%3D%7BuserId%7D%26pubId%3D25053");
tritonIdSync.load_pixel("https://cm.g.doubleclick.net/pixel?google_nid=triton&google_sc&google_cm&stn=ZenoAds");
tritonIdSync.load_pixel("https://gu.dyntrk.com/adx/trtn/us.php?dynk=tr26t81n&redir=https%3A%2F%2Fyield-op-idsync.live.streamtheworld.com%2Fpixel.gif%3Fpartner%3Ddyn%26uid%3D%5BDYNADMIC_UID%5D%26pubId%3D25053");
tritonIdSync.load_pixel("https://ad.turn.com/r/cs?pid=58&redir=https%3A%2F%2Fyield-op-idsync.live.streamtheworld.com%2Fpixel.gif%3Fpartner%3Damb%26uid%3D%23USER_ID%23%26pubId%3D25053");