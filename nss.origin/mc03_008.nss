//<continuation number="1100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_008.nss_MAIN
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
	#ev177_����֦��Ұ��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc03_009.nss";

}

scene mc03_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_007.nss"


//����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 10000, "#000000");

	OnBG(100, "bg001_��b_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\",1500,true);

	SoundPlay("@mbgm18", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����˵�ˣ�Ҫɱ������ʨ�Ӻ�
�����ڰ�������֮����ʱ��˵�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͥ�@

	OnBG(101, "bg053_���}�Ҥ�ͥ_01.jpg");
	FadeBG(2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ұ�������ϯ�ϡ�
�����类Ժǽ�������棬̫����ͷ����ɢ����ů�Ĺ�
�ߣ�����լۡ��ͥԺ�У����������˼��ڵķ��Ż�����


����˫�ֽӹ������Ӽ򵥵ı�ǰ�ղ��롣
����������ʢ�Ź��̵Ĳ�ˮ�����Ų����ײ��������Ĵ�
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureEX("Ұ��", 3000, @0, @0, "cg/ev/ev177_����֦��Ұ��.jpg");
	Fade("Ұ��", 1000, 1000, null, true);

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc03/0080010a00">
���������ǡ���
��������Ϊ��׼�����𡣡�


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080020a03">
�����Ǻ����ϲ�þ�̫���ˡ���


{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080030a00">
��ȷʵϲ����
�����ִ�����ȫ�����ҵ��Ⱥá���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������������������ѧ��ʱ���Ĳ������ѧϰ�ġ���
ʱʹ����Ƶ���ľ������ּ��ŵĲ��롣


</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080040a03">
��̫���ˡ�
����������������Ϊʲô����ã��Ǹ�������
���⿼���˾������˵���Ȥ�أ���


{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080050a00">
������Ǵ�ξ�����Լ�������ΪӦ��ƫ������
���ǻ��ƽ򡣡�


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080060a03">
���ܿ�ϧ��
�����´��ˡ���


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080070a00">
��������
����ô�ǣ�־Ұ����


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080080a03">
����Ȼ־Ұ��Ҳ�������ᡣ��


{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080090a03">
���ҵ�ϲ�ã������ա�
��������ϲ�����֡���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080100a00">
�����������Ǻ�<RUBY text="�ӣ�����">����</RUBY>��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Ȼ�����ҵ�ƫ����������Ϊ�ⲻ����Ů�Ե���Ȥ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_Ц�.png");

//�룺������Ҋ���죩��090930��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080110a03">
������
�������ҵ�����Ϊ��
������Ե��������Եļ��¡���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080120a00">
����������𡣡�


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080130a03">
���š�
�����������������������


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���Ѻ�ɫ���������Ľ�����Ǿ��ǽ�����
��������������ݵĽ�����Ǿ��Ƕ��ס�
��
������ԭ����ˡ��ǿ�����ĽǶȲ�ͬ��

���ҿ������еĲ��롣
���ں�ɫ������������ʢ���ʶȽ����Ĩ�衣


�������Ҫ˵�Ļ��������龰Ӧ���ǿ϶�����
��֦�ļ��⡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc03/0080140a00">
��������ξ���¡�
���й����Ǻŵ���Ϣȷʵ�ɿ��𡣡�


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080150a03">
���š�������û�д�
�����Ǻ�ȷʵ�����ˡ���


//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080160a03">
����ը�����µ�ͬʱ��
�����Ǻų������������ֳǡ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080170a00">
������֮�󡭡���


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080180a03">
����֪��ը��Ϊʲô����Ҳ���±�����������
�ɡ���û���ƻ�����Ҫ�������Ҳֻ���ƻ�һ
���ֵĳ̶ȡ�
����ʹ��ˣ���ը�����ƺ�Ҳ<RUBY text="������">ɳĮ��</RUBY>�ˡ���


{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080190a03">
�����Ǻţ����á���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080200a00">
�����Ǹ�������ը���ģ���


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080210a03">
��������һ���޷��϶���
��ֻ�ǣ���Ȼ�����ֳ����൱����Ҵ��ߣ�
��������û��һ���˱�ը���ٴ�Ŀ��������
���ŵ���Ӱ��ۼ�����


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080220a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ô��
�����Ǻš���
��
���Ǽһ

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc03/0080230a00">
�����ˡ������𡣡�


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080240a03">
���Ҳ�֪��������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080250a00">
��������


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080260a03">
����һ������Ĵ��ԡ���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080270a00">
����ʲô����


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080280a03">
����˵����һȺ���ɵ��ˣ��ӱ�ը�����ڳ���
ĳ��<RUBY text="��������">����֮��</RUBY>�����Ǵ����Ǹ�����������ǰ��
���İ�����ʿ���顣��


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080290a00">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������Ų裬��ˮ�Ӻ�������θ�С�
�������ڲ��ú��ȡ�

��������ɬ��
������������

������ָ�⸧���ű��ء�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc03/0080300a00">
���뿪�����ֳǣ��������Ļ�������ж��
�Ĺ�ģ����


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080310a03">
��ȷ�е���������˵��
��������ҲҪ������ơ���


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080320a03">
�����ϺS�������ﵽ��ս����ģһ������ʨ��
��������פ��һս����



{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080330a00">
��������˵�����н���<RUBY text="��">��</RUBY>��פ��������
����Ȼ���ܹ����ǣȣ�������Ҫ���Ի�򡭡���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����Ϊ������ֻҪ����ȫ�������ޣ����޷�
������˳�س��Լ�Ϊ��ѹ���µĽ���ߡ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc03/0080340a00">
���ӺS�����������ǣ��������־���Ӧ������
�������ֶ���Ѱ�Һ�ƽ�ĵ�·�ɡ�
����ʹ�����޷�������ѣ���ֻҪ�ܹ�����һ
����ʱ�䣬��������˵Ҳ���кô��ġ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080350a00">
������Ӧ�û᲻ϧ���ۣ�����ر����
�����ʱ�䡣��


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080360a03">
���ţ�һ����˵��������
�����ǣ�<RUBY text="��������">�Ǹ�����</RUBY>ȴ��һ������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080370a03">
�������糿�����ϵ��ºʹ�����ֵ���������
֦�Ķ���Ԥ���Ѿ������ˡ���


{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080380a00">
��������


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080390a03">
����Ȼ������ʨ�Ӻ�Ϊ������������ȫȨ��һ
�����衣
��ֻҪ��Ϊ�˻��ݣ����Ļ��Ҳ������������
�ŵ����ˡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080400a03">
��������Լ����ֶ����ȹ��Լ���Ȩ��������
��ͼı���޷����ܾ������Ȩ�����
���㲻������Ϊ�𣿡�


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080410a00">
������˵�����˺ͽ�פ����ս����������⡣
������ԭ����ˡ���


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080420a03">
����ʹ���ػ��Ҳ��������κ�ת����
������Ӧ��Ǭ��һ����һս�������ˡ���


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080430a03">
����ž�����������ɡ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080440a00">
��������������������ȴ��������Ӧ�û���
�ܶ�ɣ�
�����ȿ������Լ���Ϊ�������������ݣ�����
��������ͬ����


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080450a00">
����������˵������Ҳֻ����ʽ���ѡ�
����������ӵ�кS�����ŵĴ���ʨ�Ӻ�Ӧ��
û�б�Ҫ������������¡���


{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080460a03">
����������ʽ������ʨ�Ӻ�����硣��


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080470a00">
��������


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080480a03">
����ʽ�����裬����
��������Ǹ����˵�һ�С���


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080490a03">
�����ӹ�������Ǹ���ʽ�����ߡ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080500a00">
�������������Ǵ�ξ��
���������ˡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��������������<RUBY text="����">�Ǹ�</RUBY>�������еõ�������
����Ȼ�ǳ���ʵ�����ϵ���֯����ʽ������Ӧ�úܿ��
���⵽�ż�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080510a03">
�����ķǷ�֮��������ӵ�к�������ʽ�����
����ʵ����
����ʽ��ʵ��֮�䲻�������ࡣ��


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080520a03">
������ʽ�Ķ���ֻʣ�¶̶������ˡ�
��ʨ�Ӻ𲢲����ڻ���ȥıȡȨ����������
��ʱ<RUBY text="����">�ͻ�</RUBY>����ȫ����Ȩ�ޡ���


//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080530a03">
����ͳ����������ȫ��֮�󣬻����̿�ʼ�ж�
�ɡ�
������������ڶ�����ʽ������˲�䡣��


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080540a00">
����������ɡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������ȫΥ���˾��³�ʶ��Ҳ��ȫΥ�������γ�ʶ��
��Ҫ������ǰ��δ�ŵ���̬����������߽�Ļ���״̬��
Ļ����֯����������֮�ڴ������ϸ�ԭ����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080550a03">
�������ʨ�Ӻ𡣡�


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080560a00">
������������


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080570a03">
�����ԡ�
������Ҫ������֮ǰ����


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080580a03">
��������ʨ�Ӻ���˵�ս��������͵����ˡ�
����ȥ��ɱ�Ǹ����ˡ���


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����仰���Ҷ��߲���������Ļ��졣
�������Ƕ��ڴ�͹�������θС�Ȼ���Ƕ���ɱ���˸���
�����˵����ָ����ġ���Щ�Ҷ��ܹ����ס�

�����ǣ�����<RUBY text="����">����</RUBY>����<RUBY text="�Σ����">����</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080590a03">
�����������Ѿ����ʣ��źӡ�С����ܥԽ��λ
�������ڿ���Ҳ��������һ�����˳�����
�������ʧȥʨ�Ӻ������޾��޷��������
�ˡ���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080600a00">
���Ѿ���û�б����ܹ�ʤ�������ˡ���


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080610a03">
���š���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080620a00">
�����Ǵ�ξ����������ֻ�ǣǣȣѰɣ���



{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080630a03">
��ʧȥ��ͳ�ʵĻ�򣬽�פ�������������𣿡�



{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080640a00">
���ǡ�
��������������������������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080650a00">
��û�н��������塭����


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080660a03">
���ǻ������İɣ�
��������ʧȥʨ�Ӻ�֮�󣬻��Լ�������
����פ��û��Ҫ���֡���


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080670a03">
����ʹ�������������ս����Ҳ�޷��õ����
�������������


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080680a00">
���ǣȣѱ���Ҫ���¿���֧���͵�ս���ˡ�
������������������ڴ��ʧȥ�˹��о�����
��״̬�£���Ӧ�ò������ѡ���



{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080690a03">
���ǰɡ�
����������ʱ�ڴ�һ��<RUBY text="��������">����δ��</RUBY>��ĳ����
����ʲô������
��Ӧ��Ҳ����ɣ���


{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080700a03">
������Ӧ���ܰ�Ⱥ�����׵������޾������չ�
���¡�����������¶���������һζ���Ų�����
��δ��̫����ʧ���ˡ�
���԰ɣ���


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080710a00">
�����������˻���Ҳ���Լ������ɡ���



{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080720a03">
����ȥ��һ�°ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�������Ŀ���������֪���Ǹ����������εأ�����ʲ
ô��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080730a03">
���������ˣ�����أ���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080740a00">
�������ǡ���


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080750a03">
������Ϊ��Σ���


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������������ƻ���ΰɡ���Ȼ�ˡ�
��
������ɱ���S����������ʨ�Ӻ𣬽���������
�����һ��𣬴�ܣǣȣѵ���ͼ��

���ҳ�������ƻ���ȷ����
��ֻҪ��ɱ�ɹ��������޺ͽ�פ���ľ�ս�ܿ����ս���
δȻ��

��������Ļ���ĸ��ˣ����Ǳ��ãȣ���֧�䣬���ڴ����
��͹�����˵�����ֽ�ֶ�����������ϣ�������ġ����
�ƻ��ɹ��������߽Կɱ��⡣
��֮��������Ȳ��ܣ�������ǰ����ˡ�

����ƻ�����Ч�ġ��Ҳ��ò����ϡ�<k>
��
��
�����ǣ�����<RUBY text="�ԣ��������">��������</RUBY>��

���Ƕ�������������ս��

���������֮ǰϮ������ͧ����˵������ͬ��
�����ǣ��ǱϾ�����ը�������޻�����ΪĿ����ж���


����ε�Ŀ�����ˡ�
��Ϊ������Ŀ�ģ���ȥһ���˵�������

�������ж���Ŀ��������ģ�Ҳ�޷�Ϊ�ж��������
����Ϊ���ڴ���ʨ�Ӻ���˵������������������ȷ�ģ�
��һ���ǲ���ġ�


�����ڱ������������ţ��Ƿ����ͬ�ء�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mc03/0080760a00">
�����������ͬ�Ļ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����ڰ�ɱ�������ϵ�ί�У����Ҳ���þܾ��ɡ�


</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080770a03">
�����ý��⣬����ʵ��ʵ˵Ŷ����



{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080780a00">
�������Ҳ������ڴ�ǡ�
������ֻ�ǣ��Ҿ��ñ��ʲ��޲�ͬ����


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080790a03">
�����޲�ͬ����


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080800a00">
������Ϊ���ػ��������ˣ���ǿ��ĳһ������
ȥ��
�������ж�����������<RUBY text="����">����</RUBY>����


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080810a00">
���������ر���Ϥ����Ϊ��
��ͬ�����£����Ѿ��ظ����������ˡ���



{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080820a03">
��������������䡣��


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080830a00">
���ǡ�
��û���κβ��졣��


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080840a00">
��������ȵ�<RUBY text="�ԣ��������">��������</RUBY>����


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080850a03">
����ѽ��
��ȷʵ��ȫû�в�ͬ������


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080860a03">
����ô���������˾�������أ�
�������Э�����𣿡�


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080870a00">
�������š���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("��", 3100, @0, @0, "cg/bg/bg001_��b_01.jpg");
	Fade("��", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���Ұ�һֱ�������еı�ǰ�գ��ŵ�����ǰ��
����Щ�ֲڵ���ڴ��������ʵ��ָУ������Ҹе���Щ
���ᡣ

��̫���ۿ�Ҫ������λ�ý����³���
�������Ұ���ᣬ������Ҳ�ý����ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("��",1000,true);

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/mc03/0080880a00">
���Ҳ�����ֹ��ξ���¡�
�����ǣ���Ҳ�޷��ṩЭ������


{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080890a03">
���Ҷ��ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������֦С����˵�ͷ��û��һ�㾪�ȵ����ӡ�
�����������������Ƿ����ġ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080900a03">
��̫���ˡ�
�������˵ҪЭ���ң��ҷ����᲻֪��
�������ء���


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080910a00">
�����Ȼ������µ����˺ʹ���ʨ�Ӻ����֮
���ս�����𡣡�


{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080920a03">
���š�
���ԣ���ֻ���Һ��Ǹ�����֮���<RUBY text="����">��ִ</RUBY>���ѡ�
��ʹ��Ϊ��Ϊ�����������ûʵ��Դ������Σ�
������˵���ײ�����˶��ѡ���


{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080930a03">
������������������߰ɡ�
���һ������үү����һ���ġ���



{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080940a00">
��������


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080950a03">
������


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080960a00">
�������������Ҳϣ���ܹ�ͬ�С���



{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080970a03">
����������һ��
�����ǡ�����


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0080980a00">
���ǡ��Ҳ���Э���㣬Ҳ��������㡣
����ֻ��Ϊ���Լ���Ŀ��ǰ���S������������



{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0080990a03">
��Ŀ���ǡ�����


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0081000a00">
�����ǺŻ����䲻������


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0081010a03">
��������


{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0081020a00">
�����ݸղ�˵���ģ�Ӧ����ĳ��������������
�ı�ը�������ͳ����ˡ�
��������״���޷��϶��Ǹ�ĳ��������������
�ţ����ߺ����Ǻ��йصĶ�������


{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0081030a03">
����ô����Ϊ��ȥȷ��һ�£���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0081040a00">
���ǡ�
����Ҫ����ȥ�жϣ�����Ǻ�����صĶ�����
����á���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0081050a00">
�����ߡ�������������Ǻŵ����塣
���ң���


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�ե�å����", 15000, "WHITE");

	OnSE("se�M��_�ե�å���Хå�01",1000);
	Fade("�ե�å����",0,1000,null,true);

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateTextureSP("�}����200", 5100, Center, InBottom, "cg/st/3d�y�Ǻ�_����_ͨ��.png");

	CreateStencil("�}�����}��",18100,center,InBottom,128,"cg/st/3d�y�Ǻ�_����_ͨ��.png",false);
	CreateTextureEXover("�}�����}��/�}��Ѫ��", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("�}�����}��/�}ɫѪ��", 18111, "#CC0000");
	Fade("�}�����}��/�}��Ѫ��", 0, 750, null, true);
	Fade("�}�����}��/�}ɫѪ��", 0, 950, null, true);
	DrawTransition("�}�����}��/�}ɫѪ��", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Fade("�ե�å����",300,0,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
�����塣������
�����Ǻŵ��ź���

����ģ�
��
������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	
	Fade("�ե�å����",0,1000,null,true);
	Delete("�}�����}*");
	Delete("�}ɫ�\");
	Delete("�}����*");
	Delete("Memory_cover");
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����",2000,true);

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mc03/0081060a00">
�����н���ȷ�ϵ����񡣡�


{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0081070a03">
�������������ˡ�
����ô��һ��ȥ�ɡ���


{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc03/0081080a00">
���鷳���ˡ���


{	FwR("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0081090a03">
�����ſ���顣���ڻ�����ա�
������������֮��·�ϴ���ͬ��Ҳ�ܻ���
����ĺ��䡣��


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc03/0081100a03">
��һ�����ء���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ�`��
	CreateSE("SE01","se��Ȼ_�L_Ұԭ02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01")/2;
	FadeDelete("Ұ��", $�Еr�g, true);

	WaitKey(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��һ���Խ������ڡ�
��ͥԺ�е���ů���������ߣ�����Ѹ�����������塣

����Ų��þͻῪʼ��ѩ�˰ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc03_009.nss"