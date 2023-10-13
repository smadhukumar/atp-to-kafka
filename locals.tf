locals {
	emptyprimaryregion = var.primaryregion == "" ? var.region : var.primaryregion
    	primaryregion = var.local_data_guard_enabled ? local.emptyprimaryregion : var.region
	standbyregion = var.remote_data_guard_enabled ? var.standbyregion : var.region
	johannesburg="${var.region == "af-johannesburg-1"?"ocid1.image.oc1.af-johannesburg-1.aaaaaaaa6sqcet63fymp4xjgcsw4aybn2akeaosgplvabcc66722u5wc7xka" : ""}"
chuncheon="${var.region == "ap-chuncheon-1"?"ocid1.image.oc1.ap-chuncheon-1.aaaaaaaa4jqgvvvuel2lkb7jtmvpyzmqegihz73f52bocb4vw5vt7qduuida" : ""}"
hyderabad="${var.region == "ap-hyderabad-1"?"ocid1.image.oc1.ap-hyderabad-1.aaaaaaaa33avelr3ax54wwmr5mos2xr62nn4czxsxad62nfsa4xkvpz6vjoq" : ""}"
melbourne="${var.region == "ap-melbourne-1"?"ocid1.image.oc1.ap-melbourne-1.aaaaaaaanzcbvcjerk2xfp6az34iqpgdyfpgcoa4xtzceym7cvsq2w743j3a" : ""}"
mumbai="${var.region == "ap-mumbai-1"?"ocid1.image.oc1.ap-mumbai-1.aaaaaaaafceefldznsvjv6okorac6q4z6kbqgvxz7iq7uwdpdewz4mughdva" : ""}"
osaka="${var.region == "ap-osaka-1"?"ocid1.image.oc1.ap-osaka-1.aaaaaaaa7wazephb7zg3tult3j2i5cmcp4wnjorabkucl2ygr3htxlwpwskq" : ""}"
seoul="${var.region == "ap-seoul-1"?"ocid1.image.oc1.ap-seoul-1.aaaaaaaa3ogot2mjof7w7inwmb3kuannmmsxwnjq2otwocmdqeac7ruaczqa" : ""}"
singapore="${var.region == "ap-singapore-1"?"ocid1.image.oc1.ap-singapore-1.aaaaaaaavglsbp5xez44kyczp2r2nfgao3e5ef33ukwgi4qkn6zye6qblxda" : ""}"
sydney="${var.region == "ap-sydney-1"?"ocid1.image.oc1.ap-sydney-1.aaaaaaaa2p5knovzbziv35py3ubs6tjhvoxvq43ism3pas4u6r2qhcjr5hea" : ""}"
tokyo="${var.region == "ap-tokyo-1"?"ocid1.image.oc1.ap-tokyo-1.aaaaaaaaywmni625j5cnqexujakn735aqatb57tikmtq7xnqcza22t3rz3ea" : ""}"
montreal="${var.region == "ca-montreal-1"?"ocid1.image.oc1.ca-montreal-1.aaaaaaaal3wtsz2d6ie4cy3zeqnyoggsouqenzebyppzl2avmpkh2t2xwzwa" : ""}"
toronto="${var.region == "ca-toronto-1"?"ocid1.image.oc1.ca-toronto-1.aaaaaaaawm6ntm6dlbifkk24xwpbrbmmr23tdsx33xafvfdnm6reuutbo3eq" : ""}"
amsterdam="${var.region == "eu-amsterdam-1"?"ocid1.image.oc1.eu-amsterdam-1.aaaaaaaawfcdbetzt7l3v2756p7qpqakube5zwpeylia4ycmyhvrtn63rxqa" : ""}"
frankfurt="${var.region == "eu-frankfurt-1"?"ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaeqva35y7ycysmhnmd27n6dbcrricdrmgoygs5qmqix4hq2zh6ydq" : ""}"
madrid="${var.region == "eu-madrid-1"?"ocid1.image.oc1.eu-madrid-1.aaaaaaaafnohkkzldsfbayrh4jrlrbikuq5v2izwisbeubpg2whk5kblko7a" : ""}"
marseille="${var.region == "eu-marseille-1"?"ocid1.image.oc1.eu-marseille-1.aaaaaaaaulaegn335j3ewqavkq2xbtpugctkcfevtunkuyo2tlpowcydxt2a" : ""}"
milan="${var.region == "eu-milan-1"?"ocid1.image.oc1.eu-milan-1.aaaaaaaapyrbgp57gcip5tsgjzwgt3ltorxtg4xim5rlpc6ghjybitlkyvbq" : ""}"
paris="${var.region == "eu-paris-1"?"ocid1.image.oc1.eu-paris-1.aaaaaaaapupcei5rod3im2oadnqleximdnwvdg3zguw4vqgp5mdcmn2kydfq" : ""}"
stockholm="${var.region == "eu-stockholm-1"?"ocid1.image.oc1.eu-stockholm-1.aaaaaaaakmjqpvleocg53cusaemcnab7pmzd5kj2rsq6eerq2olseio2ctfq" : ""}"
zurich="${var.region == "eu-zurich-1"?"ocid1.image.oc1.eu-zurich-1.aaaaaaaaefca7jqwexhelknizcn2iagahucchyx2jszr4s7fnzosntctbata" : ""}"
jerusalem="${var.region == "il-jerusalem-1"?"ocid1.image.oc1.il-jerusalem-1.aaaaaaaa4xiydgeelssunezhin5dcycnpzb2stvpl42h7qui4xdhkg6dbhda" : ""}"
abudhabi="${var.region == "me-abudhabi-1"?"ocid1.image.oc1.me-abudhabi-1.aaaaaaaa5ahlo6jloshpaurmpr4wv6tl5a55b2kojrz5snhrqxupy25kvsca" : ""}"
dubai="${var.region == "me-dubai-1"?"ocid1.image.oc1.me-dubai-1.aaaaaaaatrrkh5zom2foywrlzsqq5zoc76ik2s5yepfcfsv35drbw5gnvawq" : ""}"
jeddah="${var.region == "me-jeddah-1"?"ocid1.image.oc1.me-jeddah-1.aaaaaaaah3ugpjcveh23fqkbri2ti4jqkzjdpjf22iakj3dwxsvao4pmpd3a" : ""}"
queretaro="${var.region == "mx-queretaro-1"?"ocid1.image.oc1.mx-queretaro-1.aaaaaaaazbc7p5mxi5wzicenb3ua4g4pu5w6gprjbat3ql2cw3xtzzxl2e2a" : ""}"
santiago="${var.region == "sa-santiago-1"?"ocid1.image.oc1.sa-santiago-1.aaaaaaaa5s2c727navecr5yhhmmndkqlvcyleojs6npaaxjjsb6susmizazq" : ""}"
saopaulo="${var.region == "sa-saopaulo-1"?"ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa3t3pfntgbqmt54undyqvvqtpuzdgk2yr2m2phyap276zofk65spa" : ""}"
vinhedo="${var.region == "sa-vinhedo-1"?"ocid1.image.oc1.sa-vinhedo-1.aaaaaaaaj52ojxgvxzhqnf4ksbbrma2rdojpydbidb3ezrxr3womyl6kw6fa" : ""}"
cardiff="${var.region == "uk-cardiff-1"?"ocid1.image.oc1.uk-cardiff-1.aaaaaaaaugadda2wn6irc2qmui6kq3wnt4ahvjwnii3jsylpu2bfkyjidvja" : ""}"
london="${var.region == "uk-london-1"?"ocid1.image.oc1.uk-london-1.aaaaaaaactiq5tanjvl4txufijyuth56fvobb5ulldkt6zp3rrwmgwytdkha" : ""}"
ashburn="${var.region == "us-ashburn-1"?"ocid1.image.oc1.iad.aaaaaaaavbafqm6xn5bkhrqtohcdphv5b7c7wzile7w33cv4drdiittiivpa" : ""}"
chicago="${var.region == "us-chicago-1"?"ocid1.image.oc1.us-chicago-1.aaaaaaaaovq3b557k3lu5e7zccm2lro4ownazzumxc7ta746igrpucdfhjra" : ""}"
phoenix="${var.region == "us-phoenix-1"?"ocid1.image.oc1.phx.aaaaaaaau7vmxlrrzjkl3sckwhhzjuhmuqvgvc2mj7akciq4ea4gsvsucxsa" : ""}"
sanjose="${var.region == "us-sanjose-1"?"ocid1.image.oc1.us-sanjose-1.aaaaaaaazsur6kmirgf34ac3mab3ejl5cfklsvnqxeqy3orvfa4mkep4m4ya" : ""}"

	region1 = "${coalesce(local.chuncheon,local.hyderabad,local.melbourne,local.mumbai,local.osaka ,local.seoul,local.sydney,local.tokyo,local.toronto,local.amsterdam,local.frankfurt,local.zurich,local.dubai ,local.jeddah,local.santiago,local.saopaulo,local.vinhedo,local.cardiff,local.london,local.ashburn,local.phoenix,local.sanjose)}"
}
