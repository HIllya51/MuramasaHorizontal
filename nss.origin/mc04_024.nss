//<continuation number="330">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_024.nss_MAIN
{

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev193_��󥰤���ȣ�=true;
	#ev194_��󥰤���ȣ�=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_025.nss";

	//��ꥳ�쥯������á���������������
	ReConquest();
	#mc04_024=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene mc04_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//���`����
//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================
..//������ָ��
//ǰ�ե����롡"mc04_023.nss"

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm31",0,1000,true);
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg022_ɽ��a_03.jpg");
	StL(1000,@0,@0,"cg/st/st������Ѫ_ͨ��_˽��.png");
	FadeStL(0,false);

	Delete("�ϱ���");

//============================================
//��ꥳ�쥯������á���������������
}else{

	//״�B���x
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg022_ɽ��a_03.jpg");
	StL(1000,@0,@0,"cg/st/st������Ѫ_ͨ��_˽��.png");
	FadeStL(0,false);

	//�ꥳ����Ĩ��
	RecoIn();
}
//========================================================

	SetFwC("cg/fw/fw������Ѫ_��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����衿
<voice name="����" class="����" src="voice/mc04/0240010a04">
���ն����ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0240020a00">
���ǡ���


{	FwC("cg/fw/fw������Ѫ_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0240030a04">
���Ŀɲ��ܱ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0240040a00">
����������


{	FwC("cg/fw/fw������Ѫ_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0240050a04">
�������Ǳ����Ļ����ͻ�ʧȥվ��
��С����ǰ���ʸ�
��ӭ����Ļ��Ǽ���һ�����������


{	FwC("cg/fw/fw������Ѫ_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0240060a04">
����������Ϊʲô�ء�
���ܾ��ò�ϣ������������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0240070a00">
������������


{	FwC("cg/fw/fw������Ѫ_�դ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0240080a04">
����Ȼ����΢������
��������������һ��֮���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͣ�����
//���ţ֣������˿ڸ����������衣���¤����˄ݣ�
//inc�ñ�����ߩ`���o�����ၢ�Ǥ�
	SetVolume("@mbgm*", 1500, 0, null);

	PrintGO("�ϱ���", 20000);
	CreateColorSP("�}ɫ�\", 19000, "#000000");
	FadeDelete("�ϱ���", 2000, true);

	Wait(1500);

	CreateSE("SE01","se����_����_�ڸ���");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SoundPlay("@mbgm32",3000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ů�ĵ�������ͻ�ġ�

�����ߡ�
��������ĳ������Ķ�����

����Ӧ���ǳ��μ����Ů�ԣ�
����˫��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc04/0240090a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���޴��Ʋ����Ϊ��
������ǰ���������

��Ȼ������Ϊʲô���ҵ����岢û�в����ִ��ķ�Ӧ��
���Գ��Ӱ����ֱ����Ȼ���ܡ�

��Ů�Ե��ֱۣ�����ס�ҵı��;��
��ָ���������ḧ�š�

�����ڰ���һ���Ķ�����
��ʹ���ڻ�һ����ַ���

��������ÿһ��ͷ��������ÿһ����˿��
�����ɶ�ϸ�µĸ�ο��

���ڴ��ڼ䣬Ů�Ե��޴����������ҵ��촽��
��˫������΢�������ֳ����ʲô��

�����ֿ����ҵĴ���
�����������ݣ�һֱ�����ݸ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/mc04/0240100a04">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_����_�ڸ���");
	MusicStart("SE01",0,1000,0,500,null,false);

	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);

	DrawTransition("�}ɫ�\", 2000, 1000, 0, 1000, Dxl2, "cg/data/slide_05_00_0.png", true);
	Delete("�}ɫ�\");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������˹֮��Ů�˲������ƿ����졣
�����³����ȵĺ�����

����������ס�ҵ�˫�ۡ�
���ҵ���Ұ��Ҳӳ��������˫ͫ��

���侲���ѵ�˫ͫ�в��������Ļ��档
������˼�顣��Ȼ������Ϊ�����ĺ�����������
������˵������ء�

���ղš�����<RUBY text="������">��ů��</RUBY>�ҵĶ�������ʲô�أ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/0240110a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������ϴ����Ĵ��У�����һ����
������Ϊʲô����

������ˮ���Ǵ����кδ�������������

����֪��Ϊ�Ρ�
����Ӧ�������ɵ���ˮ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����衿
<voice name="����" class="����" src="voice/mc04/0240120a04">
���뽻���ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 3000, 1000, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ͬ����һ���ͫ���������ң�
Ů�����������Ž���������
����ˡ���ռ�����ҵ���Ұ��

�����Ĵ�����ס���ҵ���Ƥ��
����������ô�����·𱻰����š�

�������Ӷ�һ�㡣
��Ů����ȥ���ҵ���ˮ��

��������֪����
��
�������������

�����Ů�ˣ�
��֪���������������

������Ϊ֪�������Բ��ܽ���ֹס��
�������������ɡ�

  ��������ϣ�һ�������ǻ�ֻ��Ů�˲���ӵ�С�
�������������޷����Ķ�����

�����¶��ؽ������и�������
����������ͷ�����Ÿղ��ô���������ͬ�����顣

������������Ƥ�е���ˮ��Ҳ������ȡ�ˡ�
����ɺ󣬽����ֽ�ͬ������Ϊ��������һֻ�۾���

��Ů����ȡ���ҵ���ˮ��
��������ˮ�ĸ�Դһ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DrawTransition("�}ɫ�\", 2000, 1000, 0, 1000, Dxl2, "cg/data/slide_05_00_0.png", false);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc04/0240130a00">
������������

//��������
<voice name="����" class="����" src="voice/mc04/0240140a00">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��Ϊʲô��
��Ϊ�Σ�


  �����³������������ʣ���ͱ���ס�ˡ�

������ָ�⣬��ֹ���ҵĻ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����衿
<voice name="����" class="����" src="voice/mc04/0240150a04">
��ʲôҲ����˵������


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0240160a00">
������������


{	NwC("cg/fw/nw������.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0240170a04">
�����Ѿ�����Ծ���˰ɣ�
����ô�������밲����������

//�����衿
<voice name="����" class="����" src="voice/mc04/0240180a04">
��ֻ�������ʱ���������̷����ɡ�
�����ҵ��֡���Ϊ��ȡ�����еĹĶ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣��ڷ���
	CreateSE("SE01","se����_����_����Ѥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�}���裲EX", 4010, Center, Middle, "cg/ev/resize/ev193_��󥰤���ȣ�m.jpg");
	Move("�}���裲EX", 0, @0, @-120, null, true);

	Move("�}���裲EX", 3000, @0, @120, DxlAuto, false);
	Fade("�}���裲EX", 1000, 1000, null, true);
	Delete("�}���裱");
	Delete("�}ɫ�\");

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��Ů�Խ�ͷ���µ��ҵ�����֮�䡣
���⿪�������������еĶ�����ų�����

��������ָ����ʱ���Ǹ���ª�Ĳ��������˼��ҵķ�Ӧ��
����Ѫ��¡��

���������������������������ݵľ���
����������Ů����Ѱ����������촽����һ��
΢Ц�Ļ��ȣ��������ƽ�����һ��Ϊ��

�����Ỻ���ַ��ս���飬����Ħ���š�
��ʱ��΢΢ʩ����������ꡣ

���ҵļ��˳����Ů�Ե��֡�
��ÿһ�붼���������������һ�仯û�з����κ����С�

���Ҹо����Լ�����ʶ���ɷ�˵���𽥼��е�һ���ط���
��ֻ�иô���ù������У�����һ�ж���óٶۡ�

��Ů�˻����ǿ�����������������һ�档
����¶�����ݵı��鿿�������������ⴥ����
����ϡ�

��������֮ǰ��ͬ�ģ�����Ĵ̼���
���ҵı����񴥵��һ��������

����³�ġ�
�����־����ỽ���κεֿ��ĽӴ���

����ͷ�Ӽ�˵�<RUBY text="������">��״��</RUBY>���ٵ���࣬һ������
��������Һ�ۼ�һ�����ߡ�
����һ�г̸��Ҵ����Ŀ������³��������ϡ�

������������Ĳ�����Ƥ���ϵĺ�ë������������
���θ��������������١�

����֪��Ϊ��̹�ʵķ�Ӧ�е����ˣ������ڰ���Ԥ��
�ļƻ��ж���Ů�˼̶��ӿ��˶������ٶȡ�
���������������������һ�������Ȼ�س鶯�ţ�
�����������İ�״��顣

�������ͷ��ϸ���У����伷ѹ���š�
�������ִ����ż�����Ū��

���·��⻹�������ֽ�˫��������
�������Ǹ��ط����̶���˱��

��ż���Գ����ɡ�
�����ᵽ�������������ºۼ��ĳ̶ȡ�

����������ͬʱ����ͷҲû��ͣЪ��
��ʱ������ϵ����ʱ����Ū��ɡ��

����Ҳ��֪�Ӻ�ʱ��ʼ����������
����ָ���⾥�ĸ�������Ħ�������ư���ס���ҡ�

����֪���Ӧ�����Ե�Ů�ԣ��������������µ��̷

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}���裲", 4000, Center, Middle, "cg/ev/ev193_��󥰤���ȣ�.jpg");
	FadeDelete("�}���裲EX", 1000, false);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc04/0240190a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�������ܵ�ͬʱ�����Լ���
���治��˼�顣

������������Դ̼������ǵ��������
���ţ����������Լ�����������
���뵽�ն�������<RUBY text="����">���</RUBY>�Ļ���
�⼸���Ǿ������ܵ����顭��

����ңԶ�Ĺ�ȥ��ʼ�����������Ȼ�ػᱻ�����Եĳ嶯
��֧�䲻����
�������ǵġ�

����֪Ϊ�Σ�������Ϊ��û�����ұ��������
�����ǽ�ĳ�֡��������Ķ���������
�����ӡ�

��ѪҺ��ȫ������ѭ����
��ÿһ���Ƶ����񾭵��񾭶����ѹ�����

��<RUBY text="����">����</RUBY>��
��������������״̬�лָ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����衿
<voice name="����" class="����" src="voice/mc04/0240200a04">
��������������


//�����衿
<voice name="����" class="����" src="voice/mc04/0240210a04">
�������������ѹ����ɡ���


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0240220a00">
���������ѡ�����


{	NwC("cg/fw/nw������.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0240230a04">
�������Ļꡣ��


//�����衿
<voice name="����" class="����" src="voice/mc04/0240240a04">
���������໵�Ļ�������Ҳ����֮�ݽߡ���
������֮Ҳ��ͨ���������壬��֧Ԯ���ġ���


//�����衿
<voice name="����" class="����" src="voice/mc04/0240250a04">
����������������
��Ϊ�˴�С�㡪����


//�����衿
<voice name="����" class="����" src="voice/mc04/0240260a04">
��ҲΪ�����Լ�����


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0240270a00">
������������


{	NwC("cg/fw/nw������.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0240280a04">
�����ˡ�
�����ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣��T�\λ�����λ
	CreateTextureEX("�}���裳EX", 4010, -510, -182, "cg/ev/resize/ev194_��󥰤���ȣ�m.jpg");

	Move("�}���裳EX", 3000, -290, @0, DxlAuto, false);
	Fade("�}���裳EX", 1000, 1000, null, true);
	Delete("�}���裲");
	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��Ů�Խ����յ����Լ�����������
���������£���������������뵽�Ǹ���λ�С�

������ʪ�����ڣ�ӵ�����ҵ����Բ��֡�
��������©�ء���ӵ��ȫ����

���Խ��ڳ��ҵĸо������ա�
������������ĽӴ��в�����

������Ů�Եĵ����а�������ζ����δ��ȫ������⡣
����ֻ��������ƽ����ĳ���ˣ����Ļ����������������С�

��������ˣ���Ҳ���Ÿ�˳������
��������⣬��Ҳ����ȥ˳������

��������������ȷ��Ҳ�Ǳ�Ҫ�ģ�
���ն������з����Ե�ĳ������������һ�㡣

�����Ů�Ի������ҡ�
�����ҴӴ����ĩ·�ϾȻء�

��������������ȷ��ĩ·��

�������ǵġ���һ�㡣
��ֻ����һ�㣬����˵�ȷ����

���Ҿ�����˺������ʵ������š�
�������ţ��������ɰڲ����̶�ӭ�ϡ�

����Ѫ���ڵؽ�Ů�ӹᴩ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}���裳EX", 3000, -90, -60, DxlAuto, false);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����衿
<voice name="����" class="����" src="voice/mc04/0240290a04">
�������ն����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��Ů���������������������˫������Ӧ���ҵ���Ϊ��
����������ʱ�����Ȼ����

���Ⲣ����������Ϊ��
��ȴ�ǰ������Ϊ��

�������š�
���������ҡ������ǰ����ҵ�ĳ�����

�����Ҿ������е�һ�ɳ�����
��
�������������ˡ�

�����������ҡ�
�����г��������ĳ�ˡ�

����������ˡ�
������ĳ����ע��һ���֯���������

����������һ���
����֪Ϊ�Σ��޿ɾ�ҩ�ء�������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}���裳", 4000, Center, Middle, "cg/ev/ev194_��󥰤���ȣ�.jpg");
	FadeDelete("�}���裳EX", 1000, false);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����衿
<voice name="����" class="����" src="voice/mc04/0240300a04">
��������ô�޴���
����Ҳ�ǡ���С��Ҳ�ǡ���


{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0240310a00">
��������


{	NwC("cg/fw/nw������.png");}
//�����衿
<voice name="����" class="����" src="voice/mc04/0240320a04">
�����ǡ���
�������������ʱ�䡣��


//�����衿
<voice name="����" class="����" src="voice/mc04/0240330a04">
������ΪħŮ���ң��ܹ����ϵġ���
���������Ҳֻ������޴��Ķ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����Щ˻�Ƶĵ��
����������ʡ�

����������İ��飬Ů������������
��ӵ����ݰ��飬��Ҳ��ס�����Ŀڴ���

����������
�������š�

����ֻ�ǣ����˶��ѵ���Ϊ��

������Ե�ɵİ�����Ϊ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����
	CreateColorEXadd("�}����", 25000, "#FFFFFF");
	Fade("�}����",1500,1000,null,true);

	WaitKey(1000);

//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
	}
//============================================

}

..//������ָ��
//�Υե����롡"mc04_025.nss"