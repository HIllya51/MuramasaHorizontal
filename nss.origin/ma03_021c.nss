//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021c.nss_MAIN
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
	if($ma03_021c_routeFlag==true){$ma03_021c_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_021.nss"

//��饤���`
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ů���������ˡ�
�����ԡ���

�������·�ٵ��������ˣ��Ѿ��͵������˸��������
�ǡ�
��������֮һ����������Ů�����ˡ�

{	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1500,null,false);}
��žણ�������Ь�����ĵ����������
���һع�ͷ��

���ھ����Լ����Զ�ĵط������˺���Ů�����š�
�����˱�����վ�š�

������һ˲֮ǰ����������ͬʱ�����������˵�ʱ��
��ŮӦ�û������Աߵġ�
���������λ�ù�ϵ���ټ��ϣ��ղŵ�<RUBY text="������">�����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma03/021c0010a00">
���ѵ�˵��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��<RUBY text="������������������">�������ֵط�ȥ����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯����¡�
<voice name="����㣯�����" class="����������" src="voice/ma03/021c0020e240">
��ʲô������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/021c0030a07">
���������ΰɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���W��
	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("�}��д", 1000);
	Wait(1);

	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	WaitKey(10);

	DrawDelete("�}��ܞ", 150, 100, "slide_05_00_1", false);
	FadeFR2("�}��д",0,1000,300,0,0,30,DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Ů��ָ�⣬�����˴��ͱ��ӵĵ��С�
���������С�

�����˾����Ƕ����ߵ�ľż����Ȼ���¡�
���������ʹ����û�ио��������Ѿ�ʧȥ��ʶ�˰ɡ�

���������������µĹ���
�����Կ�������ͳ�������У�������а���Ķ�����

���ǲ���������ѧ�����ɣ����������Լ��Դ��Ĺ���
��
����֮�����������ⶼ���ܽ����������ʱ��ҵ�С��
Ϊ����ǲ��ѧ�Ķ�����

�����ߣ����ǳ�����ʿ�ŵڡ�
����ô������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�룺�ե饰�{�����ʥ��`׷�ӡ�090923��
	$ma03_021c_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

..//������ָ��
//�Υե����롡"ma03_022.nss"

}

