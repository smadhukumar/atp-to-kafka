locals {
	emptyprimaryregion = var.primaryregion == "" ? var.region : var.primaryregion
    primaryregion = var.local_data_guard_enabled ? local.emptyprimaryregion : var.region
	standbyregion = var.remote_data_guard_enabled ? var.standbyregion : var.region
	chuncheon =  "${var.region == "ap-chuncheon-1" ? " ocid1.image.oc1.ap-chuncheon-1.aaaaaaaahjbjkzlond3nk24cl4yab7wa7mshd6qh2tmfz7ff7cxlih4qnrsq" : ""}"
	hyderabad =  "${var.region == "ap-hyderabad-1" ? " ocid1.image.oc1.ap-hyderabad-1.aaaaaaaatwml74nciczq7yjdakryqqpugr3sjihadytvkwc3q6v6gafgomvq" : ""}"
	melbourne =  "${var.region == "ap-melbourne-1" ? " ocid1.image.oc1.ap-melbourne-1.aaaaaaaayjvr2d7wv75fpluemvmnet5unkonyoxkxxspbifgcx5k5jhepkyq" : ""}"
	mumbai =  "${var.region == "ap-mumbai-1" ? " ocid1.image.oc1.ap-mumbai-1.aaaaaaaaqdecqvhi77wr546bbb3jg2nt5rgupn33b5flyc7j7eou6ovqi2xq" : ""}"
	osaka =  "${var.region == "ap-osaka-1" ? " ocid1.image.oc1.ap-osaka-1.aaaaaaaaka5g4aq547dq4ghneyzzqvpdporoj6nue5sv4achtkacacs2bhcq" : ""}"
	seoul =  "${var.region == "ap-seoul-1" ? " ocid1.image.oc1.ap-seoul-1.aaaaaaaaslufetlrpphdev45yitu2r5fumed772lcdyrla72jciasb5624aa" : ""}"
	sydney =  "${var.region == "ap-sydney-1" ? " ocid1.image.oc1.ap-sydney-1.aaaaaaaawxn3sbv3lrra5kpctlr6utop4dr7aeuttcbmljorlcboy7eu2jyq" : ""}"
	tokyo =  "${var.region == "ap-tokyo-1" ? " ocid1.image.oc1.ap-tokyo-1.aaaaaaaa35ej4x6n2ckp2hhbdjvziskud2ftvaxbgye4dm5nrul5efid3via" : ""}"
	toronto =  "${var.region == "ca-toronto-1" ? " ocid1.image.oc1.ca-toronto-1.aaaaaaaa5lxkvgmjxzmcgpxq3x3uct6yk4gayqravrtjysjgxy5gg6j6bjka" : ""}"
	amsterdam =  "${var.region == "eu-amsterdam-1" ? " ocid1.image.oc1.eu-amsterdam-1.aaaaaaaavfaohfha2cqm4efghg5sxnxo3hgrcflhiztlfb5kks4de3xvpbvq" : ""}"
	frankfurt =  "${var.region == "eu-frankfurt-1" ? " ocid1.image.oc1.eu-frankfurt-1.aaaaaaaai5knm2j3m4m5ahgcli7vagwaarvy6blh7ukn25lvhgat5o5fs7ea" : ""}"
	zurich =  "${var.region == "eu-zurich-1" ? " ocid1.image.oc1.eu-zurich-1.aaaaaaaa5e2w7bc724bha3yokmuttqe2g42kusht3gnv7436zovsw3hk3kka" : ""}"
	dubai =  "${var.region == "me-dubai-1" ? " ocid1.image.oc1.me-dubai-1.aaaaaaaakzzmdvrnujwgfvk6ccwoescmrggj6smyxni233maqdbj3aymfzyq" : ""}"
	jeddah =  "${var.region == "me-jeddah-1" ? " ocid1.image.oc1.me-jeddah-1.aaaaaaaan7rrzo3crgljax62dhwzycqjtuukjf7tm422jax33inuicxiqlmq" : ""}"
	santiago =  "${var.region == "sa-santiago-1" ? " ocid1.image.oc1.sa-santiago-1.aaaaaaaanucaqgeb6jpq4eb3jc2adxhqsbms4st4gk2vquemnfs3bsqx5msq" : ""}"
	saopaulo =  "${var.region == "sa-saopaulo-1" ? " ocid1.image.oc1.sa-saopaulo-1.aaaaaaaay4rq7eg5j5c55vlwth43y6xrhhbivagj5vosae2a56acpr3xavya" : ""}"
	vinhedo =  "${var.region == "sa-vinhedo-1" ? " ocid1.image.oc1.sa-vinhedo-1.aaaaaaaaxklendj5gx54mopxoujwx2qzjranmiea7drofwereqefqgsftwlq" : ""}"
	cardiff =  "${var.region == "uk-cardiff-1" ? " ocid1.image.oc1.uk-cardiff-1.aaaaaaaaeqiedpofj7rn6zjntf45kew5ey5jhz4fig7buzcshphxtpqgt4qa" : ""}"
	london =  "${var.region == "uk-london-1" ? " ocid1.image.oc1.uk-london-1.aaaaaaaazzrdr7wb5m5bty76iwdorbjj6csom4ax5q6g6itxp5tosagwp6ea" : ""}"
	ashburn =  "${var.region == "us-ashburn-1" ? " ocid1.image.oc1.iad.aaaaaaaajjzk6vhg45b5juiuntj2z7s2nz4rc5kb2rfevv4wv3nmv5n33uta" : ""}"
	phoenix =  "${var.region == "us-phoenix-1" ? " ocid1.image.oc1.phx.aaaaaaaaqrektuaedjkfbqtfdsy3ci6ubjm2s337jsi6xa3xyrir5wwoqspa" : ""}"
	sanjose =  "${var.region == "us-sanjose-1" ? " ocid1.image.oc1.us-sanjose-1.aaaaaaaamlmwj55imlnrketefz3ezelz437n3jbtnb6voczbfij5cav6oxaa" : ""}"
	region1 = "${coalesce(local.chuncheon,local.hyderabad,local.melbourne,local.mumbai,local.osaka ,local.seoul,local.sydney,local.tokyo,local.toronto,local.amsterdam,local.frankfurt,local.zurich,local.dubai ,local.jeddah,local.santiago,local.saopaulo,local.vinhedo,local.cardiff,local.london,local.ashburn,local.phoenix,local.sanjose)}"

}
