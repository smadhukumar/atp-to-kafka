locals {
	emptyprimaryregion = var.primaryregion == "" ? var.region : var.primaryregion
    	primaryregion = var.local_data_guard_enabled ? local.emptyprimaryregion : var.region
	standbyregion = var.remote_data_guard_enabled ? var.standbyregion : var.region
	osaka="${var.region == "ap-osaka-1"?"ocid1.image.oc1.ap-osaka-1.aaaaaaaaxe2xkdaej525sogjlkc5zlqdalwpbf3vvv3lnnnnte2xrkluc65a": ""}"
ashburn="${var.region == "us-ashburn-1"?"ocid1.image.oc1.iad.aaaaaaaanjq6zfsdibe5eyzhgdzumokgro5z2k22ixx4gp6dbtudu25br2xq": ""}"
monterrey="${var.region == "mx-monterrey-1"?"ocid1.image.oc1.mx-monterrey-1.aaaaaaaaez63ohflnwo25wjrnktwarp3fjdfodmxartsbbqo3granh5juoya": ""}"
hyderabad="${var.region == "ap-hyderabad-1"?"ocid1.image.oc1.ap-hyderabad-1.aaaaaaaahop2i7vpgzpg7hkurw3alj34eyk4asjll32uxx43eiaoppiu6pnq": ""}"
seoul="${var.region == "ap-seoul-1"?"ocid1.image.oc1.ap-seoul-1.aaaaaaaah7e4q73ngf2cunqfvtbm4qhnahz6hrwqcdbpxyguuvqwomnqg74q": ""}"
abudhabi="${var.region == "me-abudhabi-1"?"ocid1.image.oc1.me-abudhabi-1.aaaaaaaaoan46srblads5oodc2ojoufywmsl5kh73ygcuvsel42fh2rbjgha": ""}"
mumbai="${var.region == "ap-mumbai-1"?"ocid1.image.oc1.ap-mumbai-1.aaaaaaaan5ygmpzeycv3z75izr7lyf3ps7ef65obo5qbyctyci4sfeqamwta": ""}"
chicago="${var.region == "us-chicago-1"?"ocid1.image.oc1.us-chicago-1.aaaaaaaaoaqvbzbypcgiq2hffalmwb6zucrvypr2nwvrsymqsqgzpfsd256q": ""}"
madrid="${var.region == "eu-madrid-1"?"ocid1.image.oc1.eu-madrid-1.aaaaaaaaakibryurqq4z4ve3wkgiwfvuciti63ziefmisff3hoho6a4mbz3a": ""}"
montreal="${var.region == "ca-montreal-1"?"ocid1.image.oc1.ca-montreal-1.aaaaaaaa3e7y7pru2mh7ktaxt6zvsvv3vrsfesfqrojidj3qiwlsgo3xv2sa": ""}"
marseille="${var.region == "eu-marseille-1"?"ocid1.image.oc1.eu-marseille-1.aaaaaaaai4dplz5yvl4zyjivgts7hi2hobh6arjjwks6ly4g7rrmovi3urrq": ""}"
singapore="${var.region == "ap-singapore-1"?"ocid1.image.oc1.ap-singapore-1.aaaaaaaapsrh6lzniljk2gw6qwdw4kx77cfbzurm3wn2prvlfbid2cnsthqa": ""}"
melbourne="${var.region == "ap-melbourne-1"?"ocid1.image.oc1.ap-melbourne-1.aaaaaaaapvt27tlhm3rfhlbxt6fy4wv5sqlibsbtjuatdodpnpjyp4zrjelq": ""}"
phoenix="${var.region == "us-phoenix-1"?"ocid1.image.oc1.phx.aaaaaaaabcqiom4hk7qz7s752avlzzxzmcyhvlxl4cuaqr3rs7gy32mjbeza": ""}"
sanjose="${var.region == "us-sanjose-1"?"ocid1.image.oc1.us-sanjose-1.aaaaaaaa56yi2z6mk547zms3bde2q2pd6qrgnclhkhemfsyrrzfyzv5zquaq": ""}"
zurich="${var.region == "eu-zurich-1"?"ocid1.image.oc1.eu-zurich-1.aaaaaaaavtw6mobvlw4keuvnvfcya4jfojrwjzhybqhslizs22icpcucaeqa": ""}"
santiago="${var.region == "sa-santiago-1"?"ocid1.image.oc1.sa-santiago-1.aaaaaaaawabvh4qhmqghsh6ttdwv36aursuyejrk6gv4sjkszhtsq4o26nva": ""}"
frankfurt="${var.region == "eu-frankfurt-1"?"ocid1.image.oc1.eu-frankfurt-1.aaaaaaaalxlat6r72qaveswgtnrz7kuunuwsrea4yrdbj3z2izpd2gsujfaq": ""}"
stockholm="${var.region == "eu-stockholm-1"?"ocid1.image.oc1.eu-stockholm-1.aaaaaaaa5m37kwpr4lqe6megfggeaiswqwa3grkkfmxeieovy2ggn2tuj36q": ""}"
queretaro="${var.region == "mx-queretaro-1"?"ocid1.image.oc1.mx-queretaro-1.aaaaaaaamuoj2eeqgd2pmrz5rx4y23ggxbjyvb7t4m7vlvrv2huyljz7dytq": ""}"
jeddah="${var.region == "me-jeddah-1"?"ocid1.image.oc1.me-jeddah-1.aaaaaaaaqdu5x4pljleefccwg2dqlesqz3twum2qjudb5j6zl6cb7hg6bm6q": ""}"
valparaiso="${var.region == "sa-valparaiso-1"?"ocid1.image.oc1.sa-valparaiso-1.aaaaaaaaclsqk3luox5uzuo4bvhssqj5lam7rqlakmcnq64p5xqdkgvbgmzq": ""}"
cardiff="${var.region == "uk-cardiff-1"?"ocid1.image.oc1.uk-cardiff-1.aaaaaaaarcs2glgx73p6bwnq2xpsg4trr6edlp44eacrcsrz7v7ciuhgdgwa": ""}"
paris="${var.region == "eu-paris-1"?"ocid1.image.oc1.eu-paris-1.aaaaaaaa44bvbzyet5sflchq4brltajp3ffgkmn656ngidesbnnzfsamhu7a": ""}"
vinhedo="${var.region == "sa-vinhedo-1"?"ocid1.image.oc1.sa-vinhedo-1.aaaaaaaa2t3lhnks7wxtwbxcnrowwswmpgykf7w3yc774wzf572bb3hjqlcq": ""}"
johannesburg="${var.region == "af-johannesburg-1"?"ocid1.image.oc1.af-johannesburg-1.aaaaaaaa26uffbezdjj4cdixjkc5pesyxzyzqstukbm3krkplfc2mznrg2ha": ""}"
toronto="${var.region == "ca-toronto-1"?"ocid1.image.oc1.ca-toronto-1.aaaaaaaa27xh2zllpybh5mnezm6vpc2raii756vuohismcvsed6voex5yepq": ""}"
bogota="${var.region == "sa-bogota-1"?"ocid1.image.oc1.sa-bogota-1.aaaaaaaalmyk3illgma3v5pr5xywk4ebcehmjriwp6g5vro4mfitvzqpi5mq": ""}"
tokyo="${var.region == "ap-tokyo-1"?"ocid1.image.oc1.ap-tokyo-1.aaaaaaaa7snj7qa77h5w5n22bjrfh5gqehxt22uzg33hpg6vfd7frpocftya": ""}"
milan="${var.region == "eu-milan-1"?"ocid1.image.oc1.eu-milan-1.aaaaaaaampmdaa2kygshmyp7csusrwfz7xhxe2wghbj6gy33iswf3ekez6ya": ""}"
amsterdam="${var.region == "eu-amsterdam-1"?"ocid1.image.oc1.eu-amsterdam-1.aaaaaaaake5xbvg2w3uxvmt653mzpyzyai7ze34p2qzhjumtdobnfk5f4fla": ""}"
saopaulo="${var.region == "sa-saopaulo-1"?"ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaim5ff3yx4an27jkxfq2fd535lyugdb5lq24ehu7rozxujrnlwyfq": ""}"
sydney="${var.region == "ap-sydney-1"?"ocid1.image.oc1.ap-sydney-1.aaaaaaaa3luxsrro2xx4evw6tjgz5oowqoycnfpwtftb44sq5suufp3gbkua": ""}"
dubai="${var.region == "me-dubai-1"?"ocid1.image.oc1.me-dubai-1.aaaaaaaawdsvdv2k4kgpsbxx5k5bu3274wu6x5mk7522rpy5r5tjlp5gnrwa": ""}"
london="${var.region == "uk-london-1"?"ocid1.image.oc1.uk-london-1.aaaaaaaao3ivygd5jnhjwfruh3tv33n32i6n623zxnrcontxsnlymtodd3rq": ""}"
jerusalem="${var.region == "il-jerusalem-1"?"ocid1.image.oc1.il-jerusalem-1.aaaaaaaaghvw3m3tfztue64ihjimlcon4fwej7rer3yvznr4zuihdzjcdd5q": ""}"
chuncheon="${var.region == "ap-chuncheon-1"?"ocid1.image.oc1.ap-chuncheon-1.aaaaaaaaarqubi3h6uhgmqckykbjp2i5ulkn5aoasdbccv6t5x3lfduaac5q": ""}"
region1 = "${coalesce(local.osaka,local.ashburn,local.monterrey,local.hyderabad,local.seoul,local.abudhabi,local.mumbai,local.chicago,local.madrid,local.montreal,local.marseille,local.singapore,local.melbourne,local.phoenix,local.sanjose,local.zurich,local.santiago,local.frankfurt,local.stockholm,local.queretaro,local.jeddah,local.valparaiso,local.cardiff,local.paris,local.vinhedo,local.johannesburg,local.toronto,local.bogota,local.tokyo,local.milan,local.amsterdam,local.saopaulo,local.sydney,local.dubai,local.london,local.jerusalem,local.chuncheon)}"
}
