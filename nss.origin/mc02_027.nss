//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_027.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_028vs.nss";

}

scene mc02_027.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_026.nss"

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateColorEXadd("��Ļ��", 15000, "WHITE");
	CreateTextureEXadd("�Ƅ�", 16000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�Ƅ�",0,1000,null,true);
	Fade("��Ļ��",0,300,null,true);
	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg001_��b_01.jpg");
	Zoom("�}����20", 0, 1050, 1050, null, true);
	Zoom("�}����20", 50000, 1500, 1500, null, false);
	Shake("�}����20", 50000, 3, 3, 0, 0, 1000, Dxl3, false);
	Delete("�ϱ���");

	OnSE("se���L_����_���ϕN01", 1000);
	DrawDelete("�\Ļ��", 200, 1000, "zoom_01_00_1", true);
	FadeDelete("�Ƅ�", 500, false);
	FadeDelete("��Ļ��", 1000, true);
	CreateSE("�ȥ�ǥޥ�", "se���L_����_������02_L");
	MusicStart("�ȥ�ǥޥ�",0,1000,0,1500,Dxl3,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���뿪���ɷ����ң���������С�
���ӱ��������޿����ļ���ת�䡣

������Ž�ŵ���ζ����������������������
��������ƽ����������ܡ��������ٶȡ�
�������������ص�����������ͣ�
Ӧ��Ҳ�������̾Ͳ��������<RUBY text="����">�ڲ�</RUBY>��ͻϮ��

��ֻҪ��ͣ�Ͳ�ǰ����˦�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�ȥ�ǥޥ�", 1500, 100, null);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc02/0270010a01">
��������ô��������
�����������ô���ˣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270020a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���Ҹ���Ҫ�㣬��֮��������С�
��һ������Ϊ��ȷ�Ͻ������������£�
��һ��������Լ��������롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����30", 1000, Center, Middle, "cg/bg/bg028_��亣ǣȣѻ���_03.jpg");
	Delete("�}����20");

	StL(1000,@0,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	StR(1000,@0,@ 0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(0,false);
	FadeStL(0,true);

	EfRecoIn2(300);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270030a03">
��ʮһ�¶�ʮ���������ߵ���ʮ��֡���
�����������أ�����һ�ҷ���ս���Էɺ�
ѵ���������������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270040a03">
������Ԥ����֪ͨĻ����
���ǲ������ӭ����
����Ȼ��Ϊ����һ������Ϯ����ػ���
׼���˾���̬�ưɡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270050a00">
�����н�ͧ������أ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270060a03">
��ά��˹��÷����ʽ���͡�
���ڷ���ս�����ٶȽϿ죬
���������С����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270070a00">
���������ɳ��ض�ʮ���������
�����̶ֳȵ�ս���������ܳɹ�
��Ϯ�����֣�Ҳ�������ʲô�𺦡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270080a00">
���������ס�
���������޵ľ���Ҳֻ����ʽ���Ѱɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270090a03">
���š�������ˡ�
������ͻϮ��������գ��������ֽ����д���
�����ĵ���Ļ�������Ƕ������һ�á�
����Ӧ�û���΢��ǿ������ǡ�����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270100a03">
��˵����ֻ�Ǹ���ʽ���ѡ�
���ٽ����ѵ����ɱ�����ҪԱ��
ƭС��ҲҪ�и��޶ȡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270110a00">
��ͬ�⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������ʮ�ʹ����ô���ʵ��ַ�
�����ܻ�ɹ���
��������ն�û����ͻϮ�ߣ�λ�ڵ����ϵ�
����Ҫ��ԱҲӵ���Լ��ľ����š�

����ˡ���
����ʮ���յ��죬�����޷��ַ���ս����
Ҳ����ʵ�������͹������׹�ļ�������
��<RUBY text="����">�ʵ�</RUBY>�Ĵ��÷�ʽ�ɡ�

������н�����Σ����������Ҳֻ����һֻ��
��һֻ�۷ŶԷ�ͨ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270120a03">
���Ӻ����������Լ�ж������
����ά��˹���ķ����ٶȡ�����ʮ���Ӿ��ִܵ�
Ŀ�ĵء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270130a00">
������������ֻ��ֱ��ǰ�����������ξ��
��Ϊ�˾�����������޵Ķ�Ŀ�����н�ͧ
�Ƿ���ȡ�ػ��н��ķ�ʽ����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270140a03">
���������Ӧ�ò��ᡣ
����Ϊ�غ��ǿ�����ը���İ�ȫ�ԣ�
��ũ�����ƺ���û����ȫ��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270150a03">
������Ҫ������ս����ʱ�䡣��


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270160a00">
������ԭ����ˡ�
�����ԣ���ը��սû���ɳ��������
�������⿪���ٶȲ���ķ��н�ͧ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270170a03">
������ͬ�������ɡ���
������Ҫ�ڰ����Ļ���֮��
ʹ��ը������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270180a03">
����������ĵط�������ը���ᱻ����Ϊ��
�͸�����������̻�ף����
������Ϊ��һ���������ֳǼ���ʮ�����<RUBY text="����">����</RUBY>
��׼����ը������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270190a00">
������������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270200a03">
�������������𣿡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270210a00">
��һʱ֮�䡭���������š���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270220a00">
�����������׵�����
���൱��һ���������Ļ�ҩ��
���ڣԣΣԻ�ҩһ��ֵı���������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270230a03">
����ô��������Ц������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270240a00">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ЦҲ��Ц�ص���ͷ��
���������һЦ��֮�Ļ�����Ҳ������ô����

������֦С��Ҳ����һ���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270250a03">
����������ʲôԭ�����������µ�������
���Ѿ��޴Ӳ�֤��
��ֻ�ǣ����ƺ����Ƕ�ʱ���ڵķ���
�������Ǿ��������о���ɵ���������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270260a03">
������������Ϊ�ֶ���
����������ը���Ĳ��ϡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270270a00">
�����������ֵİ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270280a03">
����˵����ӡ�������������ߵ����ꡱ�ż���
�ھ򵽵ġ�
����Ϊڤ������ؽ�������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270290a00">
��������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270300a03">
���������Ȳ���������
��������һ�еؽ��鷳�����Ĳ�����
������ͣ��⵹����ʵ����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270310a03">
�����ң��������ˡ�
������Ϊ�һ���Ϊ̫���������¶���һ��Ϸ
����Ū���𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270320a00">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270330a00">
��������ҵ�������Ȼ���ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����׹��������С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270340a03">
�����������˵ı���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270350a00">
���Ȳ�˵����¡�
����ξ���£�
��֪������ı���˳���𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270360a03">
��ֻ���ҵ��Ʋ���ѡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270370a00">
���鷳����һ�¡���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270380a03">
������Ԥ���ը���ƻ���ģ��
�Ҳ���Ϊ����ÿ�Ͷ��ʽ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270390a03">
������Ϳտ�Ͷ�������ܵ�������
�������������ڸ߿�Ͷ�£�
���ж��ֲ����š���


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270400a00">
����ȷ������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270410a03">
����󣬻��ǻ��������Ͷ��ը���ɡ�
�����һ�ѡ���ٶȽϿ졪����ӵ�в���������
���ն�<RUBY text="����">��׽</RUBY>���������塭����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270420a00">
�����Ǵ�˵�еġ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270430a03">
���ӣ�-���š�������������״�����ʵս��
��Ż��������ɡ�
���˴���ս���ھ���ʷ�ϣ���������ش�
���塣��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270440a00">
���Ѿ��������
�����ң��Ѿ�װ���ڴ�ͽ�פ���������ˣ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270450a03">
���ǵģ��������ˡ��鱨��ʵ��
���������������������ģӣ�-���ŵ�
<RUBY text="����">����</RUBY>�Ѿ��ں�����ش����˰ɣ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270460a00">
��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270470a03">
����Ҳ�ǿ�ũ�����ı��졭��
��Ҫ������ô˵�Ļ����������β�������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270480a00">
��������ӵĻ�����Ҳ�롣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ݴӴ�ξ���������Ļ����ƺ����Զ��ԣ�
�������������Կ�ũ����Ϊ���ֵĶԾ��У�
ʤ��<RUBY text="������">����ת</RUBY>�ˡ�
��������Ҳ�ǣ�������Ȼ�ɡ�

���ն�������ս�����Ķ��֣��������¹��ء�
��������ʤ�㡭������Ҳֻ��������������
�ҷ����������������

�����Ƕ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc02/0270490a00">
����������Ϊ��β�͵Ķ���ɡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270500a03">
�����һᰮ�����ġ�
������ս����ӽ��պò��ᱻ��ը�����ĵ�
����Ȼ���ͷ����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270510a03">
������֮ǰ�����ǻ���װ������װ�õ�
�ӣ�-���Ŵ�����ڳ�����
�����Ż��������ٶȵִ������ֳǵ�
�Ͽա���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270520a03">
��Ͷ�¶���ɵ���
ά��ͬ�����ٶ�����Σ������
��ը���������ᵽ���ʱ�ű�ը����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270530a03">
�����ڿ��е��ʵ�λ�ñ�ը��
��ֻ�����������ֳ���Χ����Ȼ��
Ϊ�μӰ��ϵ��´������ĵ���
�����һ�õľ����ǻ�ȫ��ɥ������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270540a03">
�������޽�����������
�����ʧȥ����Ϊ��Ȩ���ң�
Ҳ���Ǿ��������ľ���������
���Ϊ��Ӣ����Ĵ���������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270550a00">
����������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270560a00">
����Ҫ��ֹ�Ļ�����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270570a03">
������˵˵�������������뷨�ɡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270580a00">
������������ȡ�ж�����ȡ�ؼ���ը����Ȼ��
�������壬���Ƕ����޷����յĵط�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270590a03">
��̫����ʵ���ˡ�
������Ȼ֪�����ܶ���ɵ��ĵط���
������䱸ɭ�ϣ������ǵ�ս���ǲ�
����ͻ�Ƶġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270600a00">
����ô�Ӱ��˷������֣��ƻ�����ս������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270610a03">
������ս����ֻһ�ҡ�
��������Ҫȫ���ƻ��𣿡�


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270620a00">
�����������ܸ���ս�ƻ�����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270630a03">
����Ȼ��ô��û����ʧ��
�����ܱ�֤�Է���ȫ�̽��ܣ�
������ȡȫ��ķ�����ʩ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270640a00">
��������ɱ��ũ���������������������ж�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270650a03">
���������塣
��������ս�ƻ�������һ�˶�����
��ʵ�оͲ�ͬ�ˡ�������УҲ����
����ũ����ָ����ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc02/0270660a00">
������������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270670a03">
���������������𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270680a00">
����ξ�����ƺ��Ѿ����г��񡣡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270690a03">
���ǵģ���ʵ��
�����ǲ�����Щ�������ء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270700a00">
���ھ��ӳ�������ֹ�����Ļ�����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270710a03">
��������������ս�������ܶ�Ա�ı���
�ǳ��١���
��һ��С��ս���������ʮ��ʿ����Ӧ��
����ȫ����������

//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270720a03">
������ɴ��������Ҳֻ�����˵�������
Ҫ��ʤ��ֻ�ܳ������ڿ��й�����Ԯʱ
��ȡ�ж�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270730a00">
���е�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270740a03">
���Һ�ɴ����Ǳ�����ս���ɡ�
���������˾�͵Ϯ��Ҫǰ�����ֵķ��д���
�������ǵ���ս����

//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270750a03">
�������������ý��аɡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270760a00">
��ԭ����ˡ���
����������л����������ǡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270770a03">
���ǵġ�Ȼ�����ж���Ҫ��ը�����壬
���ǽ���Ͷ����ģ���ڡ�
������ǲ������ⶪ���Ļ�����Ʒ��
������������������


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270780a03">
����������ȥ���˵��������ɡ�
����Ȼ���ݵ��������ţ������ǵİ���
�������塣�ᴩ��ʵĻ��������Ǳ���
�ļ��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270790a00">
�����ס���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270800a03">
�������ţ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270810a00">
������ϣ����ˣ���û�������
��������ͬ���ɡ���

</PRE>
	SetTextEXC();
//	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//�����ߣ����ԥ��I�팝��

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270820a03">
������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270830a00">
����ξ���£���


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270840a03">
��û��ûʲô��
�������ȡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0270850a03">
�����ˣ���Ų��õ���һ���ɡ�
������ֻ��һ�λ������ɨ��Ļ����ֻҪ����
�������ĵ������ǰ�㵽ը���Ļ���������ʱ
���Σ���ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0270860a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//�����ߣ����ԥ��I�팝��
//	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������K��
	EfRecoOut1(300);
	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg001_��b_01.jpg");
	Zoom("�}����20", 0, 1050, 1050, null, true);
	Zoom("�}����20", 50000, 1500, 1500, null, false);
	Shake("�}����20", 50000, 3, 3, 0, 0, 1000, Dxl3, false);

	Delete("�}����30");
	CreateSE("SE�ȥ�ǥޥ�", "se���L_����_������02_L");
	MusicStart("SE�ȥ�ǥޥ�",0,1000,0,1500,Dxl3,true);
	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��
�����������������������ߵ���ʮ�ŷ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc02_028vs.nss"