locals {
	emptyprimaryregion = var.primaryregion == "" ? var.region : var.primaryregion
    	primaryregion = var.local_data_guard_enabled ? local.emptyprimaryregion : var.region
	standbyregion = var.remote_data_guard_enabled ? var.standbyregion : var.region
	johannesburg="${var.region == "af-johannesburg-1"?"ocid1.image.oc1.af-johannesburg-1.aaaaaaaaqrccuudqkcn3d2jh2q346ae3cknqh4wpbuilln7owmufluzd3kiq" : ""}"
chuncheon="${var.region == "ap-chuncheon-1"?"ocid1.image.oc1.ap-chuncheon-1.aaaaaaaaayfqlotnaxi7q54mdo47v5m55uiz46bjrcduki445mde7dngus4a" : ""}"
hyderabad="${var.region == "ap-hyderabad-1"?"ocid1.image.oc1.ap-hyderabad-1.aaaaaaaafmscht6fvhlmkhwolrdxuxjgvpcmi6ythjvyrkhmui6exz7upgbq" : ""}"
melbourne="${var.region == "ap-melbourne-1"?"ocid1.image.oc1.ap-melbourne-1.aaaaaaaatrpngg24amqa6ixtiiubwzxa2hja3xbwu5xkq4mssqunno74pdva" : ""}"
mumbai="${var.region == "ap-mumbai-1"?"ocid1.image.oc1.ap-mumbai-1.aaaaaaaamlhywaade37x35o7w5nnyhmfoezqt24itdxlz7fzd2aparyupybq" : ""}"
osaka="${var.region == "ap-osaka-1"?"ocid1.image.oc1.ap-osaka-1.aaaaaaaa7slxd3wjvwuer2crlmm5qz3g2y2yma2ru3hhffyqi4bvk6mzu2aa" : ""}"
seoul="${var.region == "ap-seoul-1"?"ocid1.image.oc1.ap-seoul-1.aaaaaaaalm7frs5kneddwixbgprdc5fadliwgfesj33nb2ncd7uv5iofzdha" : ""}"
singapore="${var.region == "ap-singapore-1"?"ocid1.image.oc1.ap-singapore-1.aaaaaaaa5xy4ur5zvmy3iertv6lttjpr7phh2qcmdoetw5djqsrgnwtrtjtq" : ""}"
sydney="${var.region == "ap-sydney-1"?"ocid1.image.oc1.ap-sydney-1.aaaaaaaatz4wzbolpifj54b4n2y733alyjfp5ig6p6aynflyzzf6b4c2wmjq" : ""}"
tokyo="${var.region == "ap-tokyo-1"?"ocid1.image.oc1.ap-tokyo-1.aaaaaaaaoqr2sierzhvur65danvbzwz7u5gjhe4stbgil273n2xyp2cpnydq" : ""}"
montreal="${var.region == "ca-montreal-1"?"ocid1.image.oc1.ca-montreal-1.aaaaaaaarymju2wph64w34xpxxkhnqfkzckyt2ej5obxbg6ltdhevinvjnfq" : ""}"
toronto="${var.region == "ca-toronto-1"?"ocid1.image.oc1.ca-toronto-1.aaaaaaaa5zo7blk3blz5xnyofynqsievvzb3r2onyxks22zlmvnoopdnpwvq" : ""}"
amsterdam="${var.region == "eu-amsterdam-1"?"ocid1.image.oc1.eu-amsterdam-1.aaaaaaaannqei7rxt5gzmovs22ch3tc5r5epqm2ioqgqrxla6o4s24whdszq" : ""}"
frankfurt="${var.region == "eu-frankfurt-1"?"ocid1.image.oc1.eu-frankfurt-1.aaaaaaaazo5x3eg2yzwmdbuxcuftnkx47oirq3ruxux2lmspzok3j45flsrq" : ""}"
madrid="${var.region == "eu-madrid-1"?"ocid1.image.oc1.eu-madrid-1.aaaaaaaarw6upcsjlohdnyzozgc5pewzvzmcchll7ypvduksuzlxsadkjh5q" : ""}"
marseille="${var.region == "eu-marseille-1"?"ocid1.image.oc1.eu-marseille-1.aaaaaaaavzl6ml6b5zn7zng6dty4vbfp5rd4jhenu4ajbdnzzziwehjw7o3a" : ""}"
milan="${var.region == "eu-milan-1"?"ocid1.image.oc1.eu-milan-1.aaaaaaaatrrxnmd5b2y6lormcuwq5kqbvibq3som3hcshp7ppn3q2c6o7wna" : ""}"
paris="${var.region == "eu-paris-1"?"ocid1.image.oc1.eu-paris-1.aaaaaaaarswbsglunjvjvq7garbapfkvktcjzogjxxkdl2wzquagul6aesba" : ""}"
stockholm="${var.region == "eu-stockholm-1"?"ocid1.image.oc1.eu-stockholm-1.aaaaaaaa4lrjm3mxp5wetxiabxiapybq6wlgucetwlqlllcpdn3bf2jtw7uq" : ""}"
zurich="${var.region == "eu-zurich-1"?"ocid1.image.oc1.eu-zurich-1.aaaaaaaan7suign7uajebquto2gwajl4a5oslg6azobgwaw3n5cm3ewanqza" : ""}"
jerusalem="${var.region == "il-jerusalem-1"?"ocid1.image.oc1.il-jerusalem-1.aaaaaaaaizynzm6qdlggcrw7zdzy6s52ni5jhia7si5eadxwziabp5saalga" : ""}"
abudhabi="${var.region == "me-abudhabi-1"?"ocid1.image.oc1.me-abudhabi-1.aaaaaaaazdwdk7bdzfv6ed7pqvdjan4sh7npfxtaflbklpxmay2gsis74kda" : ""}"
dubai="${var.region == "me-dubai-1"?"ocid1.image.oc1.me-dubai-1.aaaaaaaaeo2vrf5lvtwcqs4xjsixxcwcrlnjvq2ipmxpjspj257zmpvosnoa" : ""}"
jeddah="${var.region == "me-jeddah-1"?"ocid1.image.oc1.me-jeddah-1.aaaaaaaaktgw3gt26vps4wbgqpw6lqokqnstxm3w4pyxxtqlqmckaqpgmxpa" : ""}"
queretaro="${var.region == "mx-queretaro-1"?"ocid1.image.oc1.mx-queretaro-1.aaaaaaaavdlr6k5gjrxcz4lksbhpshidgy3ws2kmarrjyol6es6srehjdvhq" : ""}"
santiago="${var.region == "sa-santiago-1"?"ocid1.image.oc1.sa-santiago-1.aaaaaaaagj5o5qh77xih3fjoy3x3bup7osnkvs5ihygqiue75ssmpx576wkq" : ""}"
saopaulo="${var.region == "sa-saopaulo-1"?"ocid1.image.oc1.sa-saopaulo-1.aaaaaaaapefwbkkmteept2ipof5cnhemkyhmyxomxippjrhtiajwfjlygg4q" : ""}"
vinhedo="${var.region == "sa-vinhedo-1"?"ocid1.image.oc1.sa-vinhedo-1.aaaaaaaauhv7lmttrkgnatsthcnhustxxbolbpkn3xvi7joxa7hd7ybd676q" : ""}"
cardiff="${var.region == "uk-cardiff-1"?"ocid1.image.oc1.uk-cardiff-1.aaaaaaaaikcvcv7xmwpaf3ghvzyaqqvhmrcnkvcf7s5zj7andjexeugjanoq" : ""}"
london="${var.region == "uk-london-1"?"ocid1.image.oc1.uk-london-1.aaaaaaaap4qrd37oqmokf33725yrnrsopmagiy5bduysyogzqtp3i2ae2neq" : ""}"
ashburn="${var.region == "us-ashburn-1"?"ocid1.image.oc1.iad.aaaaaaaaesxggkbcxdt3fw7nfstan5eq52ityh4vgeyh3bodkoqrvpj44o3a" : ""}"
	region1 = "${coalesce(local.chuncheon,local.hyderabad,local.melbourne,local.mumbai,local.osaka ,local.seoul,local.sydney,local.tokyo,local.toronto,local.amsterdam,local.frankfurt,local.zurich,local.dubai ,local.jeddah,local.santiago,local.saopaulo,local.vinhedo,local.cardiff,local.london,local.ashburn,local.phoenix,local.sanjose)}"
}
