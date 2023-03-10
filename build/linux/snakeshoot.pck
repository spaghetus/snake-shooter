GDPC                  P                                                                             res://.godot/extension_list.cfg PB      +       @>????C??<sj???    ,   res://.godot/global_script_class_cache.cfg          ?       ????P???.L???    D   res://.godot/imported/Icon.png-da3ffb58b8a1a0eb60872b7bfbdfe5b4.ctex`      F      t?M-7UX?E?{l??    D   res://.godot/imported/icon.png-7c6403be1be0a98a34b14bf837b41c44.ctex?      ?	      gYн????X ?+_    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex?       \      6(4?d=EQ?ǮVj,    H   res://.godot/imported/tbloader.svg-ac537690612434f49f9a80d3b536a819.ctex?       ?      ?al6?6A?????\       res://.godot/uid_cache.bin  ?A      ?       ?-?7G-?/?-????    (   res://addons/tbloader/icon.png.import   ?      ?      ???=??h??F??s?    0   res://addons/tbloader/icons/tbloader.svg.import 0      m      ?lWW?? ?c??<M'    $   res://addons/tbloader/src/plugin.gd ?      ?      yr??L;8h?λ?Iny    4   res://addons/tbloader/tb-gameconfig/Icon.png.import ?            ?ʹ)??	`b??Yt    ,   res://addons/tbloader/tbloader.gdextension  ?      ?       ?g??^s?l???       res://icon.svg  @1      N      ]??s?9^w/??????       res://icon.svg.import   ?-      K      ?3??'?cC???:?       res://project.binary?B      ?       
?}??	????L?C?    list=Array[Dictionary]([{
"base": &"EditorPlugin",
"class": &"TBPlugin",
"icon": "",
"language": &"GDScript",
"path": "res://addons/tbloader/src/plugin.gd"
}])
GST2            ????                        P  RIFFH  WEBPVP8L<  /?????$????~??m??%b???mkǞ?????m???ZUJ?m??????	?]v	?T
??EH%?]v??r?]???,??L???Q?Q?붋_?H?7{???	? ???:???ռ%???Fu$`b??mL"+~?o??)H_???C??)@_??¸?}???
? ?Ye?N5m??ь 
??Y?e?%%???55Dy ?iO8?dI?????]?] 8?? ?T?B$?r??. t??W??M/  \?????s??  ?&??n=g?`?MJ?T?$pw????s+)????7|???7N7?p??DJO?7<= ??6??ۮ?[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://djq0ysbqgwp5n"
path="res://.godot/imported/tbloader.svg-ac537690612434f49f9a80d3b536a819.ctex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://addons/tbloader/icons/tbloader.svg"
dest_files=["res://.godot/imported/tbloader.svg-ac537690612434f49f9a80d3b536a819.ctex"]

[params]

compress/mode=0
compress/high_quality=false
compress/lossy_quality=0.7
compress/hdr_compression=1
compress/normal_map=0
compress/channel_pack=0
mipmaps/generate=false
mipmaps/limit=-1
roughness/mode=0
roughness/src_normal=""
process/fix_alpha_border=true
process/premult_alpha=false
process/normal_map_invert_y=false
process/hdr_as_srgb=false
process/hdr_clamp_exposure=false
process/size_limit=0
detect_3d/compress_to=1
svg/scale=1.0
editor/scale_with_editor_scale=false
editor/convert_colors_with_editor_theme=false
???@tool
extends EditorPlugin
class_name TBPlugin

var map_control: Control = null
var editing_loader: WeakRef = weakref(null)

func _enter_tree():
	set_icons(true)

	map_control = create_map_control()
	map_control.set_visible(false)
	add_control_to_container(EditorPlugin.CONTAINER_SPATIAL_EDITOR_MENU, map_control)

func _exit_tree():
	set_icons(false)

	remove_control_from_container(EditorPlugin.CONTAINER_SPATIAL_EDITOR_MENU, map_control)
	map_control.queue_free()
	map_control = null

func _handles(object):
	return object is TBLoader

func _make_visible(visible: bool):
	map_control.set_visible(visible)

func _edit(object):
	editing_loader = weakref(object)

func create_map_control() -> Control:
	var button_build_meshes = Button.new()
	button_build_meshes.flat = true
	button_build_meshes.text = "Build Meshes"
	button_build_meshes.connect("pressed", Callable(self, "build_meshes"))

	var button_build_csg = Button.new()
	button_build_csg.flat = true
	button_build_csg.text = "Build Combined CSG"
	button_build_csg.connect("pressed", Callable(self, "build_combined_csg"))

	var ret = HBoxContainer.new()
	ret.add_child(button_build_meshes)
	ret.add_child(button_build_csg)
	return ret

func build_meshes():
	var loader = editing_loader.get_ref()
	loader.build_meshes()

func build_combined_csg():
	var loader = editing_loader.get_ref()
	loader.build_combined_csg()

func set_icons(on):
	var editor_interface = get_editor_interface()
	var base_control = editor_interface.get_base_control()
	var theme = base_control.theme

	if on:
		var texture = ResourceLoader.load("res://addons/tbloader/icons/tbloader.svg")
		theme.set_icon("TBLoader", "EditorIcons", texture)
	else:
		theme.clear_icon("TBLoader", "EditorIcons")
nڳ*?GST2              ????                            RIFF  WEBPVP8L?  /??6?$E??#?I{?MzSg?(?m??ֹD???G?G???rm۲?y???'?@#????bIR???????}S???O?????>??/??1?Na?,???|?H???' ?h??@??TǤ;H??(??????.??????A?LjƠ??Lw?A??@??L??7?????Z??힤X6???JjL??rQٖcy-?ƺ?6?!?8?q??F?ԁ??Y???=?????z??ܿt???5??Y?????????????e? ??3?N??;O?}??E
????s`b4^j3??@ ?|????????iY^????$??v??m۶m?6??u??M?6??w&??{????? ????s???}?pyk]?? ?o??R?hSP???J??C???M}d?U???Ni%?D3??3y???~?? ߷<>? h()i??Uɇ{??????k???????
?c?????o?Sn?????pR???}{?>???i3?"EA|?I??VW?*?JcM?v?????秗?@b0q?,?S?????`d
?<;{??,??????????le??O?"?????<p?Ȥ??e??)777??????:?Р?	?????G Z?.? c??8?b??4.???%?XP???
?Dŧ?U??,?lʠ???7}{R?V??;1?=?Ϭ?om?/??{?K?D?{?n??͍???M򫛂_a?PT?x??.
?qcoy?hm??????;I*??rB<#[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://pck0rkngx3hx"
path="res://.godot/imported/Icon.png-da3ffb58b8a1a0eb60872b7bfbdfe5b4.ctex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://addons/tbloader/tb-gameconfig/Icon.png"
dest_files=["res://.godot/imported/Icon.png-da3ffb58b8a1a0eb60872b7bfbdfe5b4.ctex"]

[params]

compress/mode=0
compress/high_quality=false
compress/lossy_quality=0.7
compress/hdr_compression=1
compress/normal_map=0
compress/channel_pack=0
mipmaps/generate=false
mipmaps/limit=-1
roughness/mode=0
roughness/src_normal=""
process/fix_alpha_border=true
process/premult_alpha=false
process/normal_map_invert_y=false
process/hdr_as_srgb=false
process/hdr_clamp_exposure=false
process/size_limit=0
detect_3d/compress_to=1
۩(?$?;GST2   @   @      ????               @ @        ?	  RIFF?	  WEBPVP8L?	  /??Em???ڑi?&+?D+??m?6?m۶m۶m???|?B??=' Ѷ?????[???#?hl?????m	?????????d??d+?ˠiU2???6$eց۶?$;{7??6?P?ȞȞH담?}]e"6"?p!b?슾?.??I??NaB${???8?PEBđ=C?T?*.
Sf"???=p<N:n:/\N:8?Ce!??L?)?p??K<܃???T?l??@?x?'.*?^?8*?V?Ye!???{Y??F=?M?
? ?enD|???	?'?Z]ϖj?}?*? " ?Cď??^Ts?????q???^?G?"?B?@?zt??O=?@x??&?????;?X[vQ??՝&???a???7?z?-?y?-?^???{?;*?????L?Io???̣??5???=?ͨb~l&?)d*җ<*5)?RjRr??nկ???????5}L}??r9b????W5?&?:?>?#?Ӣ????Z?X?ķ2V???Ǌ0V?Y??ۨ?%<??h??S,dE??4{?j>ݍ???????;?Ǩ?~h???????s??+p?+?MǕ?????=KqH????[?-g_>|????E?5???c???c<?kƌ? ???&V?y=?m???P\_?#?I??v??+?6?-ۨ?y?㶊??+????p?)?À?????9?^*?+dJ2b}u?????y?␞?닶?SD0??S????zcV=?"bR1???V\_?)?k۷?g@P??"?KJ?aEx???s 8?W?Ԉ?w??????'lTO?(=I_?^?^???@\??#Y?<'v??GN މ?Q?vM͑l?bc?X?}??U@?[?<?=4T%bqU???+??骈???!?U#uuW Ne?JM2V?r????៊???4?k?v?:??-?U?[y?OW?'?U?ԗmc????l???7_?s??|*?@?W???v>???D}????|4֊???4?)?_???????\??T?{?Y8=@??_??*آUռ???ߪi?*"? ??'?+l*>Jq?=?~ ?o"?)9???I?^s.@|???N:8??b5??盠?l????5{?^l3?C?elPƪ???x3?? Ď݄L???x?t?h?-B?rrv<?8??'Op?ھ@P]??7,(?s?c?????[??$???
?ܮF/=??????wVT" ?qɧ? ?W,0??鹮?%?\?p???*n?fx??A=!]??(?A`7cf#§גi,???+??q ????gpi?tlAق?S?z?!؀??-p?i7??s%bZ1??)yP֢??????s??]?Nt??hTW? ?o?Rgpw?.?"4?=b?~ ??{?#غ#?T?֊????XfN?2}?@,9LD+?_??S͂0????????|?u1@p?????????*?-u??O?@uDhVW?/?,?e?C?8?G?[?4??G[P??u?|*??b"?"Z?C9??lϊ?*ڊ?T`?/J??@ ???܁-]?g,??m!]?Q???/?xh?*ҹ? ????F?^F??????),?q?5!S?Iz xf?k  1?2487??a?aR/Y???܄?g???f??e?)?ߗ?C#D???? ??G$?*,p??'???X?ͮr Q?Q??C㉇???x?^*	?????E v?"d?1Z?"t?&ga??/???C#?{?u?IN2???bb+¹,??ވ?ŵ??8rq?> ?b?yNș? ⾊?o?4?-@ ?i]dt????  ??8!Sth???"????p?t???,:??ꑌ?,?Igp[tě?1#?t??߉??"b???
p?????-??]?R???
@ bf?V???nq?t?pz5C?\????X?N?U 3???$????N??sV?pz4CG????E?նx?	@ bZ1?5+?|ݭ)??m?S???
@ bJ1SѾ????7_?ݵ)??m?QǊ???????Ɗ.??;ފ??'????  ƗC*?_?[Dܡ-?η"???K?6@?-'l??@J!?k??kS?
?PJ?I?F?C*gA+ >??i?u???yNU? #?	??z?CЭۢ?u-3???1EkDY|	"?]U" ?^͌o?.??R?7@??T։?(?n?1'Z??	???u2?!%????)1 ?W×8?HO%????D?b?X ?͈Ɲ=?&??UyNU??*B??C???	?"8?r????	?J?d?#?I?""?x???S???mU?U??b?4???? "?x??z@ ^}# 뤍?Y????????rG#؂@???????x([?qb?+?\dϋ#?]9N:D???? {?'?'??(?D??{?x?4????=T"(S??????V?3qAD*?????????O??14"?G?e?*!??!H?k???Uv!b?C? 
?	"?ʮ?????Y?,DY?p{H????V?]J%4[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://c4oq3drpmu5xp"
path="res://.godot/imported/icon.png-7c6403be1be0a98a34b14bf837b41c44.ctex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://addons/tbloader/icon.png"
dest_files=["res://.godot/imported/icon.png-7c6403be1be0a98a34b14bf837b41c44.ctex"]

[params]

compress/mode=0
compress/high_quality=false
compress/lossy_quality=0.7
compress/hdr_compression=1
compress/normal_map=0
compress/channel_pack=0
mipmaps/generate=false
mipmaps/limit=-1
roughness/mode=0
roughness/src_normal=""
process/fix_alpha_border=true
process/premult_alpha=false
process/normal_map_invert_y=false
process/hdr_as_srgb=false
process/hdr_clamp_exposure=false
process/size_limit=0
detect_3d/compress_to=1
=???l[configuration]
entry_symbol = "tbloader_init"

[libraries]
windows.64 = "bin/tbloader.windows.x86_64.dll"
linux.64 = "bin/libtbloader.linux.x86_64.so"
macos.64 = "bin/libtbloader.macos.universal.dylib"
Mb??GST2   ?   ?      ????               ? ?        $  RIFF  WEBPVP8L  /??????!"2?H?l?m?l?H?Q/H^??޷???????d??g?(9?$E?Z??ߓ????'3???ض?U?j??$?՜ʝI۶c??3? [???5v?ɶ?=?Ԯ?m???mG??????j?m?m?_?XV????r*snZ'eS?????]n?w?Z:G9?>B?m?It??R#?^?6??($Ɓm+q?h??6?5??I??'???F?"ɹ{?p????	"+d??????M?q??? .^>и??6??a?q??gD?h:L??A?\D?
?\=k?(???_d2W??dV#w?o?	?????I]??q5?*$8Ѡ$G9??lH]??c?LX???ZӞ3֌?????r?2?2ؽL??d??l??1?.???u?5?!?]2?E??`+?H&?T?D?ި7P??&I?<?ng5?O!??͙????????n?
ؚѠ:??W??J?+?????6??ɒ?HD?S?z?????8?&?kF?j7N?;YK?$R?????]?VٶHm???)?rh+???ɮ?d?Q??
????]	SU?9?B??fQm]??~Z?x.?/??2q???R???,snV{?7c,???p?I?kSg??[cNP=??b???74pf??)w<:Ŋ??7j0???{4?R_??K܅1?????<߁?????Vs)?j?c8???L?Um% ?*m/?*+ ?<?????S??ɩ??a??????F?w??"?`???BrV?????4?1?*??F^???IKJg`??MK??????!iVem?9?IN3;#cL??n/?i????q+??????trʈkJI-????R??H?O?ܕ????2
?????1&???v?ֳ+Q4蝁U
???m?c?????v% J!??+??v%?M?Z??ꚺ???0N??Q2?9e?qä?U???ZL??䜁?u_(????I؛j+0Ɩ?Z??}?s*?]???Kܙ?????SG??+?3p?Ei?,n&???>lgC???!qյ?(_e????2ic3iڦ?U??j?q?RsUi????)w??Rt?=c,if:2ɛ?1?6I?????^^UVx*e??1?8%??DzR1?R'u]Q?	?rs??]???"???lW???a7]o?????~P???W??lZ?+??>?j^c?+a??4???jDNὗ?-??8'n???e??hҴ?iA?QH)J?R?D?̰oX?ؿ?i?#??????g?к?@?e?=C{???&??ށ?+ڕ??|h\??'Ч_G?F??U^u2T??ӁQ%?e|???p ?????????k	V????eq3???8 ? ?K?w|?Ɗ????oz-V???s ????"?H%* ?	z??xl?4??u?"?Hk?L??P???i????????0?H!?g?Ɲ&??|bn???????]4??"}?"???9;K???s??"c. 8?6?&??N3R"p?pI}??*G??3@?`??ok}??9?"@<?????sv? ???Ԣ??Q@,?A??P8??2??B??r??X??3?= n$?^ ??????<ܽ?r"?1 ?^??i??a ?(??~dp-V?rB?eB8??]
?p ZA$\3U?~B?O ??;??-|??
{?V??6???o??D??D0\R??k????8??!?I?-???-<??/<JhN??W??1???H?#2:E(*?H???{??>??&!??$| ??~?\#??8?> ?H???	E#??VY???t7????> 6?"?&ZJ??p?C_j???	P:?a?G0 ?J??$?M???@?Q??[z??i??~q?1???E?p???????7i???<*?,b?е???Z????N-
??>/.?g?'R?e??K?)"}??K?U?ƹ?>???#?rw߶ȑqF?l?Ο?ͧ?e?3?[䴻o?L~???EN?N?U9???????w??G????B???t??~?????qk-ί?#??Ξ????κ???Z??u????;{?ȴ<???????N?~???hA+??r ???/????~o?9>3.3?s??????}^^?_??????8???S@s%??]K?\?)??B?w?Uc۽??X?ǧ?;M<*)?ȝ&????~$#%?q???????????Q??4ytz?S]?Y9???ޡ$-5???.???S_????O/???]?7?;??L??Zb?????8???Guo?[''?،E%???;????#Ɲ&f??_1?߃fw?!E?BX???v???+?p?DjG??j?4?G?Wr????? 3?7??? ??????(????"=?NY!<l??	mr?՚???Jk?mpga?;??\)6?*k?'b?;	??V^ݨ?mN?f?S???ն?a???ϡq?[f|#U????^????jO/???9͑Z?????????.ɫ?/?????????I?D??R?8?5??+??H4?N????J??l?'?כ???????H????%"????Z?? ????`"??̃??L?????>ij~Z,qWXo?}{?y?i?G???sz?Q??????????????lZdF??]FXm?-r?m????Ф:?З???:}|x???>e??????{?0???v??Gş???????u{?^??}hR????f?"????2?:=??)?X\[????Ů=?Qg??Y&?q?6-,P3?{?vI?}??f??}?~??r?r?k?8?{???υ????O?֌ӹ?/?>?}?t	??|???Úq&???ݟW????ᓟwk?9???c̊l??Ui?̸~??f??i???_?j??S-|??w?R?<Lծd???ٞ,9?8??I?Ү?6 *3?ey?[??Ԗ?k???R???<??????
g?R???~??a??
??ʾiI9u????*ۏ?ü?<mԤ???T??Amf?B???ĝq??iS??4??yqm-w?j??̝qc?3?j?˝mqm]P??4???8i?d?u?΄ݿ???X???KG.??l?<?????!??Z??V?\8??ʡ?@????mK?l???p0/$R?????X?	Z??B?]=Vq ?R?bk?U?r?[?? ???d?9-?:g I<2?Oy?k?????????H??8????Z?<t??A?i??#?ӧ0"?m?:X?1X???GҖ@n?I?겦?CM???@??????G"f???A$?t?oyJ{θxOi?-7?F?n"?eS????=ɞ???A??Aq?V??e????↨?????U3?c?*?*44C??V?:4?ĳ%?xr2V?_)^?a]\dZEZ?C 
?*V#??	NP??\?(?4^sh8T?H??P?_??}??)e[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dbqo5aqm88amt"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.svg"
dest_files=["res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"]

[params]

compress/mode=0
compress/high_quality=false
compress/lossy_quality=0.7
compress/hdr_compression=1
compress/normal_map=0
compress/channel_pack=0
mipmaps/generate=false
mipmaps/limit=-1
roughness/mode=0
roughness/src_normal=""
process/fix_alpha_border=true
process/premult_alpha=false
process/normal_map_invert_y=false
process/hdr_as_srgb=false
process/hdr_clamp_exposure=false
process/size_limit=0
detect_3d/compress_to=1
svg/scale=1.0
editor/scale_with_editor_scale=false
editor/convert_colors_with_editor_theme=false
?|?E[<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><g transform="translate(32 32)"><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99z" fill="#363d52"/><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99zm0 4h96c6.64 0 12 5.35 12 11.99v95.98c0 6.64-5.35 11.99-12 11.99h-96c-6.64 0-12-5.35-12-11.99v-95.98c0-6.64 5.36-11.99 12-11.99z" fill-opacity=".4"/></g><g stroke-width="9.92746" transform="matrix(.10073078 0 0 .10073078 12.425923 2.256365)"><path d="m0 0s-.325 1.994-.515 1.976l-36.182-3.491c-2.879-.278-5.115-2.574-5.317-5.459l-.994-14.247-27.992-1.997-1.904 12.912c-.424 2.872-2.932 5.037-5.835 5.037h-38.188c-2.902 0-5.41-2.165-5.834-5.037l-1.905-12.912-27.992 1.997-.994 14.247c-.202 2.886-2.438 5.182-5.317 5.46l-36.2 3.49c-.187.018-.324-1.978-.511-1.978l-.049-7.83 30.658-4.944 1.004-14.374c.203-2.91 2.551-5.263 5.463-5.472l38.551-2.75c.146-.01.29-.016.434-.016 2.897 0 5.401 2.166 5.825 5.038l1.959 13.286h28.005l1.959-13.286c.423-2.871 2.93-5.037 5.831-5.037.142 0 .284.005.423.015l38.556 2.75c2.911.209 5.26 2.562 5.463 5.472l1.003 14.374 30.645 4.966z" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 919.24059 771.67186)"/><path d="m0 0v-47.514-6.035-5.492c.108-.001.216-.005.323-.015l36.196-3.49c1.896-.183 3.382-1.709 3.514-3.609l1.116-15.978 31.574-2.253 2.175 14.747c.282 1.912 1.922 3.329 3.856 3.329h38.188c1.933 0 3.573-1.417 3.855-3.329l2.175-14.747 31.575 2.253 1.115 15.978c.133 1.9 1.618 3.425 3.514 3.609l36.182 3.49c.107.01.214.014.322.015v4.711l.015.005v54.325c5.09692 6.4164715 9.92323 13.494208 13.621 19.449-5.651 9.62-12.575 18.217-19.976 26.182-6.864-3.455-13.531-7.369-19.828-11.534-3.151 3.132-6.7 5.694-10.186 8.372-3.425 2.751-7.285 4.768-10.946 7.118 1.09 8.117 1.629 16.108 1.846 24.448-9.446 4.754-19.519 7.906-29.708 10.17-4.068-6.837-7.788-14.241-11.028-21.479-3.842.642-7.702.88-11.567.926v.006c-.027 0-.052-.006-.075-.006-.024 0-.049.006-.073.006v-.006c-3.872-.046-7.729-.284-11.572-.926-3.238 7.238-6.956 14.642-11.03 21.479-10.184-2.264-20.258-5.416-29.703-10.17.216-8.34.755-16.331 1.848-24.448-3.668-2.35-7.523-4.367-10.949-7.118-3.481-2.678-7.036-5.24-10.188-8.372-6.297 4.165-12.962 8.079-19.828 11.534-7.401-7.965-14.321-16.562-19.974-26.182 4.4426579-6.973692 9.2079702-13.9828876 13.621-19.449z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 104.69892 525.90697)"/><path d="m0 0-1.121-16.063c-.135-1.936-1.675-3.477-3.611-3.616l-38.555-2.751c-.094-.007-.188-.01-.281-.01-1.916 0-3.569 1.406-3.852 3.33l-2.211 14.994h-31.459l-2.211-14.994c-.297-2.018-2.101-3.469-4.133-3.32l-38.555 2.751c-1.936.139-3.476 1.68-3.611 3.616l-1.121 16.063-32.547 3.138c.015-3.498.06-7.33.06-8.093 0-34.374 43.605-50.896 97.781-51.086h.066.067c54.176.19 97.766 16.712 97.766 51.086 0 .777.047 4.593.063 8.093z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 784.07144 817.24284)"/><path d="m0 0c0-12.052-9.765-21.815-21.813-21.815-12.042 0-21.81 9.763-21.81 21.815 0 12.044 9.768 21.802 21.81 21.802 12.048 0 21.813-9.758 21.813-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 389.21484 625.67104)"/><path d="m0 0c0-7.994-6.479-14.473-14.479-14.473-7.996 0-14.479 6.479-14.479 14.473s6.483 14.479 14.479 14.479c8 0 14.479-6.485 14.479-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 367.36686 631.05679)"/><path d="m0 0c-3.878 0-7.021 2.858-7.021 6.381v20.081c0 3.52 3.143 6.381 7.021 6.381s7.028-2.861 7.028-6.381v-20.081c0-3.523-3.15-6.381-7.028-6.381" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 511.99336 724.73954)"/><path d="m0 0c0-12.052 9.765-21.815 21.815-21.815 12.041 0 21.808 9.763 21.808 21.815 0 12.044-9.767 21.802-21.808 21.802-12.05 0-21.815-9.758-21.815-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 634.78706 625.67104)"/><path d="m0 0c0-7.994 6.477-14.473 14.471-14.473 8.002 0 14.479 6.479 14.479 14.473s-6.477 14.479-14.479 14.479c-7.994 0-14.471-6.485-14.471-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 656.64056 631.05679)"/></g></svg>
?i   ?Ǚ_??l(   res://addons/tbloader/icons/tbloader.svg?~?sf?,   res://addons/tbloader/tb-gameconfig/Icon.png??I?O?^   res://addons/tbloader/icon.pngá??ɹ?d   res://icon.svg?x?8?.}cHxres://addons/tbloader/tbloader.gdextension
?
9?ECFG      _custom_features         release    application/config/name         Snake-shooter      application/config/features$   "         4.0    Forward Plus       application/config/icon         res://icon.svg  G???ØպT?