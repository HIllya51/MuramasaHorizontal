//<continuation number="1370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_003.nss_MAIN
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
	#bg111_��ۤΌm_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���`�ꥬ=true;

	$PreGameName = $GameName;

	$GameName = "md06_004.nss";

}

scene md06_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_002.nss"

//����ۤΌm�����ߤ����������K�֣�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg111_��ۤΌm_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

	SoundPlay("@mbgm24", 0, 1000, true);

	#voice_on_���`�ꥬ=true;

	StC(1000, @0, @0, "cg/st/st���`�ꥬ_ͨ��_˽��.png");
	FadeStC(300, true);

	SetFwR("cg/fw/fw���`�ꥬ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030010b01">
��֪��������
����ӭ���ĵ�������

{	FwR("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030020b01">
���������ᣬ���������ɡ���

{	NwR("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030030e201">
����������л����

{	FwR("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030040b01">
����Ӧ����ȥ¶̨��
Ϊ�����ϲ�㡣
�������Ʋ⣬����ϣ�����콫
���齻�����Ϊ�á���

{	NwR("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030050e201">
����ȷ����
�����ڶ�����˵���̲��
�����趼ûʲô��𡣡�

{	FwR("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030060b01">
����������˴���ˡ�
���ܼ�����һյ��ʱ
���Ҿͻ���������

{	NwR("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030070e201">
��������

{	FwR("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030080b01">
���������ҽ��ܣ����ǰ����ӡ�
��������ۡ��Ķ�������Ա����

//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030090b01">
��������������Ϊ����
��һ�����ĳ����ɣ���

{	NwR("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030100e201">
��������Ȼ��
������ȨҲ�������������𣿡�

{	FwR("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030110b01">
��������ֻ��������
����������������һλ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������

	DeleteStC(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ܥå������m����λ�ä˄Ӥ�������
��
��������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st���`�ꥬ_ͨ��_˽��.png");
	FadeStR(300, true);

	SetNwC("cg/fw/nw֪��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030120e201">
��������λ�ǣ���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030130b01">
������ۡ�����

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030140b01">
���������������ǵ��ܳƣ���Ҫ����˭
�ܶ��Գе�ί�еĻ�������ָ�Ǹ��ˡ�
�ڡ���ۡ���ģ��С��ʱ��
�����Ѿ��ǡ���ۡ��ˡ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030150e201">
��������
����֮���������ǵ��糤�𣿡�

{	FwC("cg/fw/fw���`�ꥬ_Ц�.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030160b01">
���糤�����治�����糤��
���ţ�����ô��ΪҲ���ԡ���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030170b01">
��ֻ�����Ǹ���������׷��������Ȼ��
������ͷʹ���糤�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��
��������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st���`�ꥬ_ͨ��_˽��.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw���`�ꥬ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030180b01">
����ѽ��
��<RUBY text="����">�糤</RUBY>���������ġ���

//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030190b01">
����Ҳ���ż��˰ɡ�
���Ǿ�������������ɡ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030200e201">
���š�
����������ֱ���˵��
ϣ���������ǵ���������

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030210b01">
��Ϊ�˵���¶�۾��Ĺ������ǰɣ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030220e201">
�����Ѿ�֪�����𣿡�

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030230b01">
������޷�ʱ��ȷ�����õ��鱨��
<RUBY text="����������">����Ĺ���</RUBY>���޷�˳��չ����
������˶˵�����Ҳ�ܹ���һСʱ��
��û㱨���ڽ�һ������Ϣ���ܸ����֪����

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030240e201">
������������ϸ˵����������ٺò�����
����������˵���Ǻ��ݵ�¶�۾�����

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030250b01">
�����磬�ͻ�ɺ���ʼ����½�¡���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030260e201">
������<RUBY text="����">����</RUBY>!?��

{	FwC("cg/fw/fw���`�ꥬ_Ц�.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030270b01">
����ѽ������֪����
���������ˣ��鱨�ɲ��Ǽ򵥵�
����Ʒ�����������ˣ�������η���
�²�Ϊ������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030280b01">
��������Ŷ��¶�۾��ļƻ����С�
д��Ҫȥ½�½��Ρ�����
������Ϊ�����ѻ�֪���£�
�ŴҴҸ��������

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030290e201">
������������
����Ҳ֪�����ƿ̲��ݻ���
��û�뵽������Ȼ�����硣��

//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030300e201">
���鱨��ʵ�𣿡�

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030310b01">
��������˺ͺ����״�����ѣ�
˵�������Ƴ�Ŷ����

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030320e201">
������������

{	FwC("cg/fw/fw���`�ꥬ_Ц�.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030330b01">
�������ı�������ȥ������磬
�ҿ��Խ�������������硣��

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030340e201">
�������ˡ�������ǰ�Ĵ�ս����
��������������ǲ������á�
������ϣ���������ǡ���

//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030350e201">
�����Ϊʱδ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`�ꥬ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030360b01">
��Ҫ�Ǹϲ����أ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030370e201">
����ȥ���硣
��Ҫ��Ȼ����Ծ�������ͱڣ������ȥ��
���ó����õ�ɭ��Ҳ�ա���

{	FwC("cg/fw/fw���`�ꥬ_Ц�.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030380b01">
��û��ϵ�����õ��ġ�
��ֻҪ������޽���Լ����һ�����ü�����

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030390b01">
������ۡ���ս�����ڻ����Ժ������Է���
�������������˺�
��������һ�ξ����ֺܽ�����
���������������

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030400e201">
�����Լ��Դǡ�
�������������õĻ�������

{	FwC("cg/fw/fw���`�ꥬ_Ц�.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030410b01">
�����������ǲ����е����ҲŸ�
���������
��ƽ���е����˴󶼲��ᱻ�����
���ֵ������ˡ���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030420b01">
����ô��˵һ������ί�С�
��ֻ���ڱ�Ҫ��ʱ���ڣ���Ӷ��Ҫ��ģ�ġ�
ս��������Ϊ��Ͽ�ķ������ӣ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030430e201">
���������������ǡ�
�����Ƿ���������ϣ�������ȷ����ˡ���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030440b01">
���ȷ����ˣ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030450e201">
����¶�۾��Ժ��ݲ�ȡ�ж�֮ǰ��
�����Դ�����������ǳ��ˡ���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030460b01">
��ԭ����ˡ���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030470b01">
��������Ҫ��Ĺ�Ӷ���ã�
���Ǳ�Ҫ�ĳɱ��ѡ�
���������Ҳ���Ǳ�С��Ŀ��������Ӷ��
������ֵ���ơ���

//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030480b01">
������½�£����¸�������ɡ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030490e201">
������˵����ֱ�ӡ���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030500b01">
��ʧ���ˡ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030510e201">
������˵��û��
��һ���澭��������ң�
��һ�������ȴ�ڲ������ӡ���

//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030520e201">
���ɹ�������֧���Ǯ������

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030530b01">
��ֻ�ܶ��ڹ����ˡ�
����ô������������չ��������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030540b01">
��������������֮�١���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030550e201">
��������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030560b01">
��û�бȽ������õķ�����ʽ��
���ں���ս���Ļ���
Ҳ���õ���ս�𲨼�½�¡���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030570b01">
�������ǵ���������������Ҳ��Ϊ���ʡ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030580e201">
����ô����

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030590b01">
��û���⡣
�������ҷ���˵��û�����顣��

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030600e201">
��Ŷ������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030610b01">
�����档
��������<RUBY text="������">ȡ����</RUBY>���ˡ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030620e201">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���`�ꥬ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030630b01">
����˵������ۡ�����Լ����ôһ�����𣿡�

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030640e201">
�������������š�
��������ɫ���ԡ���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030650b01">
����Ӧ�������ɣ�
��ϸ��˵�������ء���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030660e201">
�������𡭡���
���ǾͲ����ˡ���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030670b01">
��������Ȥ����

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030680e201">
������˵���ǲ���Ϊ�á�
����Ŷ���Щ���˲�����Ļ�����

//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030690e201">
������Ļ�����Ҳ�գ�ֻ���뾡���Լ���
���Σ�������������

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030700b01">
���������ˡ�
����ô���Եȡ���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030710b01">
����˵�������ҿ�����Ϊ����ζ�����Ѿ�
�����˳�ŵ�����𣿡�

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030720e201">
�������š�
�����е����鶼�Ѵ����׵���
�Ҳ��������������Ż�ȥ����

//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030730e201">
��ҪɱҪ�У�Ϥ����㡣
��������������ϣ�����ǿ���ѡ��
ʹ���ķ�������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030740b01">
���ܺá�
����ô����

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030750e201">
������������ô����

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030760b01">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw֪��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030770e201">
������ʲô������Ҫ׼���ģ�
����һ�����������С�����

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030780e201">
��������Ρ���ֻҪ���ػ�ס½�¡���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030790b01">
�����𣿡�

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030800b01">
����ô�����ȷ��һ�¡�
��֪������������Ѱ�������𣿡�

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030810e201">
���ǡ���
������ء���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030820b01">
������ۡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��
����������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st���`�ꥬ_ͨ��_˽��.png");
	FadeStR(300, true);

	SetNwC("cg/fw/nw֪��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030830e201">
��������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030840b01">
����Լ�Ѿ�ͨ������

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030850b01">
�����̱�ɲ��ӣ��򺯹ݽ�����
���ƻ�¶�۾���˾����ý����޷����С���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030860b01">
�������ڽ�ҹ��ɡ���

//��@Ϣ
{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030870e201">
��������������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030880b01">
��һ�������ظ��������ء���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030890e201">
���ǰ���
�����з�����һ���ʯͷ����

//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030900e201">
���ǳ���л������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030910b01">
�����ء�
����Ϊ������Լ����

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030920b01">
��ֻҪ������

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030930e201">
���ǡ���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030940b01">
��ֻҪ��û�в���̫���
���ͺá���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0030950e201">
����⣿��

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030960b01">
������������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��b.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030970b01">
���ز���������

{	NwC("cg/fw/nw����.png");}
//������㣯�i����
<voice name="����㣯�i��" class="����������" src="voice/md06/0030980e147">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������á����ߤ�һ�i�i������

	OnSE("se����_�z_�l����02", 1000);

	WaitKey(500);

	SetFwC("cg/fw/fw���`�ꥬ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0030990b01">
����ξͽ�������Ӱɡ���

{	NwC("cg/fw/nw����.png");}
//������㣯�i����
<voice name="����㣯�i��" class="����������" src="voice/md06/0031000e147">
���м���������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��b.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031010b01">
��˵������ۡ��Ľ��ɡ���

{	NwC("cg/fw/nw����.png");}
//������㣯�i����
<voice name="����㣯�i��" class="����������" src="voice/md06/0031020e147">
���ƶ���֣���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��b.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031030b01">
����Ҫ��ô������

{	NwC("cg/fw/nw����.png");}
//������㣯�i����
<voice name="����㣯�i��" class="����������" src="voice/md06/0031040e147">
������ɱ���б�����������

{	SetVolume("@mbgm*", 1000, 0, null);}
//������㣯�i����
<voice name="����㣯�i��" class="����������" src="voice/md06/0031050e147">
��Ȼ��߱ɱ������½�����ڡ���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031060b01">
���ܺá���

{	SoundPlay("@mbgm04", 0, 1000, true);
	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031070e201">
������!?��

{	FwC("cg/fw/fw���`�ꥬ_ͨ��b.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031080b01">
��������ҪԤ�ȼ���<RUBY text="����">һ��</RUBY>����

{	NwC("cg/fw/nw����.png");}
//������㣯�i����
<voice name="����㣯�i��" class="����������" src="voice/md06/0031090e147">
���ǡ���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��b.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031100b01">
��ȥ�ɡ���

{	NwC("cg/fw/nw����.png");}
//������㣯�i����
<voice name="����㣯�i��" class="����������" src="voice/md06/0031110e147">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������á�ȥ��
	CreateSE("SE01","se����_����_�z_�}���l��ȥ��01");
	MusicStart("SE01",0,800,0,1000,null,false);

	SetNwC("cg/fw/nw֪��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031120e201">
�������ȡ���һ�£���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031130b01">
����ô����

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031140e201">
������˵��½�µ�����ҲҪɱ!?��

{	FwC("cg/fw/fw���`�ꥬ_Ц�.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031150b01">
������ô˵����

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031160e201">
����ֹɱ��һ��!?��

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031170b01">
��ί���˵�������ȻҪȡ��
�����ǡ�����ε������
ֻ�����̶ֳ��ǲ����ġ���

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031180b01">
����εĴ������������һ�˾Ϳ���
��ֹ���˵ġ�
���ȼ۵�ɱ¾�ܱ�Ҫ�������ֻȡ��һ��
��������<RUBY text="��������������">����ʺܲ�����</RUBY>����

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031190b01">
����ˣ������������Ҫ������ͬ�飬
�����ػ������в��㡣��

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031200e201">
���������˺��ҷ���ɱ��ͬ���������𣿡�

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031210b01">
���ţ�������ˡ���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031220e201">
����������������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031230b01">
����Ȼ������Щ������ء�
������û��ϵ�������غ��Ŷ����

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031240b01">
����ʲôҲû������

//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031250b01">
������ۡ�������Ļ���½�µ���ֻ��
�����������ɱ����
��¶�۵�����֮�£����ǵ����ر�ɱ������

{	FwC("cg/fw/fw���`�ꥬ_Ц�.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031260b01">
����������ǲ�ȡ�ж�������Ͳ�ͬ�ˡ�
�������ض����ಮ�١���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031270b01">
��Ϊ�˲�������ʤ������

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031280e201">
����������Ϊʲô����

{	FwC("cg/fw/fw���`�ꥬ_ͨ��b.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031290b01">
��������

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031300e201">
��ΪʲôҪ���������£���

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031310b01">
����ǰ���ǲ����������𡣡�

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031320e201">
��Ϊʲô!?��

{	FwC("cg/fw/fw���`�ꥬ_�Ŀ.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031330b01">
����������
��<RUBY text="������">Ϊʲô</RUBY>����

//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031340b01">
��Ϊʲô�����ܵз������ҷ��������ɱ����
��Ϊʲô�����������Ƕ�Ҫ����ɱ������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031350b01">
���ش��ң���

{	NwC("cg/fw/nw֪��.png");}
//������㣯֪�¡�
<voice name="����㣯֪��" class="����������" src="voice/md06/0031360e201">
������������

{	FwC("cg/fw/fw���`�ꥬ_ͨ��b.png");}
//�����`�ꥬ��
<voice name="���`�ꥬ" class="���`�ꥬ" src="voice/md06/0031370b01">
����Ϊ�����ǡ���
������Ѱ�����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

//���ե��`�ɥ�����
//���ƥ�åס��ţΣġ�
	CreateColorEX("�\", 6000, "BLACK");
	Fade("�\", 1500, 1000, null, true);

	WaitPlay("@mbgm*", null);

	CreateTextureEX("�}�����", 6000, 20, Middle, "cg/sys/Telop/lg_�����.png");
	Fade("�}�����", 1000, 1000, null, true);

//����������
	WaitKey(3000);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md06_004.nss"