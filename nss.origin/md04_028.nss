//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_028.nss_MAIN
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
	#bg018_֪�̄���_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_029.nss";

}

scene md04_028.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md04_027.nss"


//���`�}
//��˾�
//�������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

//�����ߣ�������ҹ������Ҫ�ʚݤ����롤�������Ĥ��Ǥ�Ϧ���������`���ʹ�á�
	OnBG(100, "bg018_֪�̄���_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);


	StR(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStR(300, true);

	Wait(500);

	SetFwH("cg/fw/fw�������_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280010a13">
�����Ǹð��ֻ��һ�㡣
�������𣿡�

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280020a13">
��ά���ٽ���
����ũ����������

{	StL(1000, @140, @0, "cg/st/st������`_ͨ��_�Ʒ�.png");
	FadeStL(300, false);
	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280030b00">
���ǰ������ڡ�
����֪���ġ���

{	StCL(1000, @-80, @0, "cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStCL(300, false);
	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280040b03">
������������

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280050b00">
���ٴ���<RUBY text="������">���Ϲ�����</RUBY>����ʹ�ö����׵��ɡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280060b03">
��ִ̫�ֻ���ᵼ�·�Ч���İɣ���

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280070b00">
����������һֱ�Թ�������
�Է�Ҳ��������������ġ���

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280080a13">
���ٽ�˵��û��
�����ǿɲ����ڴ�ʳ���޾��в������񰡡���

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280090a13">
�����Ǿ�����ţ�����ñ��Ӷ�鼸���ǲ��ᶯ�ġ�
��������ѽ�����ԣ��ñ����������Ƕ���������
�õġ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280100b03">
��ʲô��˼����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280110a13">
������˵�Ҷ������Ѿ��ᷳ�ˣ�������
�����ʱ���᲻�����¶����׵�����ɵĻ���
�Ǿ�ֻ��˵�����Ǹ����Ͳ��˽�״������

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280120a13">
������Ӧ�ö��˽�İɣ�
����ͽ�פ��������ȫ֧����ΪĿ�Ķ���ɵ�
����֯�����������ǹ�ϵ�����Ŀ����
�ܴ�ɻ��ǻ�Ϊ��Ӱ�Ľ�Ҫ��ͷ����

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280130b00">
�������ⲻ�˰ɣ�
������Щָ�����ϵļһ��

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280140b03">
��������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280150b03">
�������ǵ�������������ô˵�ɡ�����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280160b00">
��˵ʲô�أ���������

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280170b03">
��û��ûʲô����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280180a13">
��ά���ٽ���
���������Ǹ��������ϡ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280190b00">
�����ڣ��ǡ�����

{	FwH("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280200a13">
�����԰ɡ�
�������ж����׵���һ��ս����������

//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280210a13">
�����������Ǵ��ֿɼ��ĵط���
����ֻ��û��ʹ����ɶ��ѡ���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280220b00">
������û����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280230a13">
���������ô������

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280240b00">
��������

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����Υ�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280250b03">
���ֶ�����ڡ�
���Ҹо�����������ɿ���ߡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280260b03">
���ǲ�����������һ���𣿡�

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280270a13">
��ѽ��������Ϊ��û�ı����
��̽����ʵ����ʾ��ʵ����
��ֻ�Ǹ���ѧ�����ߡ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280280b03">
������ν��ʵ��˭����֤�أ�
�����𣿡��������Լ�����

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280290a13">
������������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280300b00">
������������Ҫ������
������ֻ�Ǹ����Ҹ�ͽ�����ѡ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280310b03">
��������

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280320b00">
�����ҡ�����˵��Ҳ�ԡ�
�����ʱ�򣬾͸ÿ���ǿӲ�ֶΡ���

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280330b03">
���㵱�棿��

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280340b00">
��������ѹ���Եġ��������ս�����͹���
η����������ʧȥ�ֿ��ģ��Ӷ����ò���ȫ��
�����ǵ�֧�䡣
��������������Ѿ����š�����

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280350b00">
��������������<RUBY text="��������">�ƾ�����</RUBY>��ս����
��״����ʼ���ն�����͹����ǿ��������

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280360b03">
��������

{	FwH("cg/fw/fw������`_������.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280370b00">
�����䲻�
�����ڲ�����ԥ��ʱ���ˣ���

//��������`��
<voice name="������`" class="������`" src="voice/md04/0280380b00">
���þ��磬�öԷ�֪���Ҿ���ʵ������

{	FwH("cg/fw/fw����Υ�_���.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280390b03">
�����ǣ����¡�����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280400b00">
���ֶ�����ڡ�
��������ǰЩ�������ԣ�
��������΢�ֱ����ֶ�Ҳ������ԥ����

//��������`��
<voice name="������`" class="������`" src="voice/md04/0280410b00">
����Ϊ����ռ����֮�󣬺ܿ�ͻ����´�½
��ͬ����һͬ���塣��

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280420a13">
���ţ�û��
��Ϊ����Ů����ʱ�����Ͼ�š���

{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280430b00">
����ʱ��������ǰ�Ļ��Ҳ������

{	FwH("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280440a13">
��ͳ�ϵ���־��ͬ����
����Ȼ�����۵��滹�Ǳ��󶼻�֧�����ǡ���

{	FwH("cg/fw/fw������`_Ц��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280450b00">
�������Ļ�����������ط�Ů��������һ����
�׷�����
���ı�ʱ���������ڣ���

{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280460a13">
��û���ı䣬һ����ı䡣
������žɵ����磬�������絮���ɣ���

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280470b03">
������������

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280480b03">
������⡣
�������ң�����Ϊ���ν��ڰ�����

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280490b03">
�������ڲ�����ڹ��ֽӽ��ٽ���ʱ�򣬾�Ӧ
�ò�ȡ��ʩ�ġ�
�����������ҵ�������˵�ģ��µ���ͷ�û�
���𡭡�����

{	FwH("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280500b03">
������������

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280510b03">
�����ò���������<RUBY text="��������">��������</RUBY>�˰�����

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280520b03">
����ԭ�����Ǵ������һ��ɵ����İ���
ά���ٽ�������

{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md04/0280530a13">
���¶����ĵĻ����͸Ͽ��ж��ɣ�ͬ־����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280540b00">
��û�����ȽϺá���
����ũ������׼�����¾Ͱ����ˡ���

{	FwH("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/md04/0280550b03">
��������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����󥳥󡣥Υå�
	OnSE("se����_����_�ɥ��Υå�01",1000);
	Wait(1000);

	SetNwH("cg/fw/ny˾�����ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯˾�����
<voice name="����㣯˾���" class="����������" src="voice/md04/0280560e087">
�����£���

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280570b00">
������������ô�ˣ�
������˵��û����ͱ�������𣿡�

{	NwH("cg/fw/ny˾�����ʿ.png");}
//������㣯˾�����
<voice name="����㣯˾���" class="����������" src="voice/md04/0280580e087">
���ǡ����ǡ���
�����˽������ά���ٽ�����

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280590b00">
�������ʱ��
������ǰ������𣿡�

//��������`��
<voice name="������`" class="������`" src="voice/md04/0280600b00">
���з��ֿ�ʼҹϮ���𣿡�

{	NwH("cg/fw/ny˾�����ʿ.png");}
//������㣯˾�����
<voice name="����㣯˾���" class="����������" src="voice/md04/0280610e087">
�����ǡ�
�������Ҿ����ˣ��Ǹ�������

{	FwH("cg/fw/fw������`_ͨ��.png");}
//��������`��
<voice name="������`" class="������`" src="voice/md04/0280620b00">
��ʲô�����ÿ���
����û��ʶ������

//��������`��
<voice name="������`" class="������`" src="voice/md04/0280630b00">
����Ȼ��֪����˭�����Ҿ��������Űɡ���

{	NwH("cg/fw/ny˾�����ʿ.png");}
//������㣯˾�����
<voice name="����㣯˾���" class="����������" src="voice/md04/0280640e087">
���������ǡ�����

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


}

..//������ָ��
//�Υե����롡"md04_029.nss"