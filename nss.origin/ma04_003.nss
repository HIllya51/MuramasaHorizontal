//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_003.nss_MAIN
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

//�룺�_�J��
//	$Ichizyou_Dead = true;
//	$Kanae_Dead = true;

//�룺��᪲�z��
	if($Kanae_Dead == true){
		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_i";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_k";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	$GameName = "ma04_004.nss";

}

scene ma04_003.nss
{


}

}

scene ma04_003.nss_k
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_002.nss"


//���µ���
	SoundPlay("@mbgm19",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//����᪡�����֦����ʤ飰�����������ʤ飰����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���
//�񣰣���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Ӻ�����صĴ����ξ������Ϳ�ͷ��ʽ��
�𳤱�������ݴ��¾�����ˡ�
�����õĳ�Ĭ��������Ҳ����ˡ�ֻ���𳤷���
ֽҳ��������������ĳ��š�

�������޵ļ��ܱ���ʵ�顣
�����ǵ���ǰ���������ȷ�п��ܡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma04/0030010a00">
���������������˾�����Щ���졣��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030020a03">
����ȷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ǽ����ؿ���֮������֦С�����ϵ�
ͷ��ʾͬ�⡣
����һ����������˵���Կ͹۵Ŀ��Ǽ���
˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030030a03">
��˵ʲô����������ɫ��������ֲ��ǹ�־
С˵��
���ô�����ʽ����Ա����ô���ύ��ô����
�ı��棿��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030040a00">
����Ҳ������Щ̫�����黯����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030050a03">
�����ң�����ʵ�顣�򾯲�������Э����
�󡣡�����Ȼ�ֿ�������������Ҳûʲô
����֮������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030060a00">
��������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030070a03">
�����߽�����������ǹ��졣
��Ϊʲô����<RUBY text="����������������������">���ڵ��鷽��˵Ҳ���߼�</RUBY>
<RUBY text="����">����</RUBY>���Ѳ�����ⲿ����Э������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030080a00">
����Ȼ˵��û�к��ʵ��˲š�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030090a03">
�����˴�սʱ�����ִ���������ֳ�����
ԱŶ������Ȼ��������µ�ʵ�顭��
�ܾ������ֲ���������ɲ��������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ξ��˵������üͷ��
�����޹��ǣ���󷽷��ض��Լ���������֯��ʾ
���ɡ�

����Ȼ�͸��˶��ԣ���ξ������̬��Ӧ���ǿ���
���Ρ���
�����ǻ������������𳤣���Ȼ�ỳ��������ʵ
���İɡ�����Ͷȥ�����䵭�����ߣ�������Ĭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma04/0030100a00">
��̹�׵��ʣ��������������û���˶Դ�ξ
������й�ʲô˵���𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030110a03">
��û�С�
��ͻȻ�ܵ������ϵ����������������
�������ͷ���İ��Ӿ��䵽���ҵ�ͷ�ϡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030120a03">
���ҵ���˾����֪�����и�����ϵͳ��
��������ͷ�ۡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0030130a04">
����Ȼ������������鱨Ҳ�޿ɺ�ǡ�
��������ȷʵ�ǻ�����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030140a00">
������Ϊ���������޵ı����о����򾯲��
����Э����
��ǰ����Ӧ��Ҫ��ʶ��Ļ���;�����ǻ�
������ģ�������һ���أ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030150a03">
�������������������𳤴��˵Ľ��飬��
�����Ƕ�λ�Դ����״�ĵ��ǣ���һ�����Ѿ�
������ȥ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ξ�ٴ�ˬ��ش����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030160a03">
������ֹ��Ҳ��ۣ�������Ϊ���־�����Ļ
�������˽��ޡ����Ż��ں�ƽ���壬��ͬ��
��ǣȣ����֣��������������Э����
����������Ӧ�þ�����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030170a00">
��ԭ����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0030180a04">
��ʵ����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ɵ�����������
���ó���ͬ���۵�����һ�������Ͷ����ա�

�����谵���컨��ȴ˿���޷��������Żָ�
������ƽ������һ���ӵĽ�פ����߿��Ŷȡ�
��Ψ����������������ͷ���Ʋ�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030190a11">
�����������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030200a10">
���š�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030210a11">
�����£ǣȣ��Ѿ��������ᦹ�ӵ�о�������
��һ����ս�����ˡ���


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���𳤵����ؿ��˴�ξһ�ۣ����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030220a11">
�����۽��ǣȣѴ�����ζԴ������£���
��ӵ�е�ʵ��ս�����������Ƕ����谭�ɡ�
���������������ｫ����������

//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030230a11">
�������ֻ��ߡ�
�����ܣǣȣѻ��и���<RUBY text="������">ֱ�ӵ�</RUBY>���������
���ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030240a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���������𳤳ô����ξ�뿪��ᦣ������Һ�
�������һ���Ʋ⡣
�����������ʵ����׼ȷ���󡣼������������޸�
ϵ���ǣȣ�Ҳ����Ҫ�����Ұɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030250a10">
��Ҳ����˵�����ǲ����������𡣡�

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030260a11">
���ǡ�
��������ʲô���ڽ�֮�����ţ���Ŀ�ı�Ȼ��
Ҫ��ɱ�����ɡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030270a11">
����������Σ�
����ξ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030280a03">
����ȫ�޳ɡ�
���ҵ�����������£�Ҳ����ס������
��ë�����ء�
��ֱ�Ǹ���ֱ������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030290a03">
���������ˡ�
���뿴����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030300a00">
���ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0030310a04">
��̫�������Ŷ����С�㡣��

{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030320a10">
���ڡ�����������������!?
�����ۣ���������ס�˿���������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030330a03">
���������ˡ���
����������������Ŷ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030340a00">
�����Ҿ�ʧ���ˡ���

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030350a11">
��������ͷ������
����Ȼ��ξҲû�����飬����������ȵ���
��������ˡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030360a11">
���ǽ�����ί��ܾ������Ǳ�����Ӧ������
ʵ��ȴ����ȡ�ж������ؼ���Ҫ��װ����
�����ɡ�
������Ϊ��ѡ��һ���ɡ������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030370a10">
���ǰ���
�������������Ϳ����˰ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030380a00">
��������

{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030390a10">
����?!��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030400a11">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030410a00">
����Ҫǰ����֮����
�������£�������ּ�����ҡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030420a03">
�����͵ġ�����ּ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030430a00">
�����ڲ�̫����͸¶�����벻Ҫ���⡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030440a03">
����֪���ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/0030450a04">
��չ���Լ����ɵ�һ��Ӯ�úøжȡ�
���治����С�㡣��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030460a11">
�����������㵽���кδ��㡣
������Ϊ�ⲻ��Ȧ�ף���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030470a00">
��Ҳ�������ȷ����������˵����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030480a11">
������������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����������������������Ƿ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma04/0030490a00">
��������˵�����۳����������������ν��
��ֻ�ǣ����¿��������Ǻ��йأ��Դ���
�������⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030500a00">
���ǵ���ֻ�ǻ��ԣ��������´������顭��
�����Ƿ�ΪȦ����һ���޷������жϡ�
��������Σ�����������п��ܡ���

//��������
<voice name="����" class="����" src="voice/ma04/0030510a00">
��ֻ��ǰ�����ؽ���ȷ����һ���취����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030520a10">
�������Ҿ��ù���³ç����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030530a00">
��������֪��ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030540a10">
�������𳤡�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030550a11">
��������
����������Ϊ��İ�ȫ���롣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030560a00">
��ʵ����֮��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030570a11">
�����Ǳز����ٵġ�
���ղŲ��ǻ�˵�ǣȣѼɻ俴����ᦹ�
ӵ��ս����ô�����Լ���ᡣ��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030580a00">
�������ס�
�������µ�������꣬�Ҳ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma04/0030590a00">
����Ȼ��ˣ����Խ���ϧ�����ַ�������
���Ǻš�
�������½⡣��

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030600a10">
��������

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030610a11">
���������������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030620a10">
����������
��û�취�˰���������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030630a11">
��������
��������˵�����¡�����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030640a00">
��������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030650a10">
��С�����£���������
��ǧ�����񡭡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030660a00">
�����ɹ��ģ�ʵ���ҵ�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030670a10">
�������ɲ����͵���������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030680a00">
�����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg031_��ᦌm����_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���뿪��
�������ξһ��������Ȼ������ͬ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma04/0030690a00">
���Ҽ��̾ͻᶯ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0030700a03">
���š�
��һ��ȥ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);

//��һ������ʤ飰�������������ʤ飰������

.//if
	if(!$Ichizyou_Dead){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣�����
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����衿
<voice name="����" class="����" src="voice/ma04/0030710a04">
���Ȼ��𳤸�ۡһ�˱ȽϺðɡ�
������׼��������˵�������С��Ҳ�Ѿ�
���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_004.nss"

	}else{

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣�����
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����衿
<voice name="����" class="����" src="voice/ma04/0030720a04">
���Ȼ��𳤸�ۡһ�˱ȽϺðɡ�
������׼����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030730a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_004.nss"

	}//if_end

}


scene ma04_003.nss_i
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���
//�񣰣���

	SoundPlay("@mbgm19",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������Ľ�פ��˾������Ĵ�������֦�ļ����ߣ�
���ΰ�ᦹ����������÷ǳ������Ե��������˵����
�����齻�������в����˳�ȥ��
��һ����ݵĳ�Ĭ��

�������޵ļ��ܱ���ʵ�顣
�����ǵ����µľ��ƣ�����ȷ�п��ܡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma04/0030740a00">
�����������˲��������Щ���졣��


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030750a11">
����ȷ��ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030760a10">
�����»����ǿ��ɰ�����
��Ļ����Σ�ձ���ʵ�顣���ֲ��㡣�򵱵�
��������Э������

//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030770a10">
����Ȼ�ֿ��������Ǻ������⡣
������һ�𡭡�ʵ������̹ȻӦ��
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����ȷ��
��������ζ����������ڿ���̨�籾�ĸо���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030780a11">
�����������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030790a10">
���š�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030800a11">
�����£ǣȣ��Ѿ�����������ᦹ��Ĺ�ϵ��
�Լ�����ӵ�о���������һ����ս�����ˡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030810a11">
��Ҳ������ξ��<RUBY text="����">ʧ��</RUBY>ǰ���Ѿ�
������ȥ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030820a00">
��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030830a11">
�����۽��ǣȣѴ�����ζԴ������£���
��ӵ�е�ʵ��ս���������Ƕ����谭��
���������������ｫ����������

//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030840a11">
�������ֻ��ߡ�
�����ܣǣȣѻ��и���<RUBY text="������">ֱ�ӵ�</RUBY>���������
���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���ð�ᦹ���û��פ�ھ��٣������������Һ�
�������һ���Ʋ⡣
�����������ʵ����׼ȷ���󡣼������������޸�
ϵ���ǣȣ�Ҳ����Ҫ�����Ұɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030850a10">
��Ҳ����˵������������Ȧ�ף���

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030860a11">
���ǡ�������ʲô�����ڽ�������Ŀ�ı�Ȼ��
Ҫ��ɱ�����ɡ�

����Ȼ��ˣ��Բ߾��ǡ�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030870a11">
���ǽ�����ί��ܾ������Ǳ�����Ӧ������
ʵ��ȴ����ȡ�ж������ؼ���Ҫ��װ����
�����ɡ�
������Ϊ��ѡ��һ���ɡ������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030880a10">
���ǰ���
���������������԰ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030890a00">
��������

{	FwC("cg/fw/fw�H��_�@��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030900a10">
����!?��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030910a11">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030920a00">
����Ҫǰ��������
�������£�������ּ�����ҡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0030930a10">
������������ô���С�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030940a11">
�������㵽���кδ��㡣
������Ϊ�ⲻ��Ȧ�ף���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030950a00">
��Ҳ�������ȷ����������˵����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0030960a11">
������������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����������������������Ƿ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma04/0030970a00">
��������˵�����۳����������������ν��
��ֻ�ǣ����¿��������Ǻ��йأ��Դ���
�������⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0030980a00">
���ǵ���ֻ�ǻ��ԣ��������´������顭��
�����Ƿ�ΪȦ����һ���޷������жϡ�
��������Σ�����������п��ܳ��֡���

//��������
<voice name="����" class="����" src="voice/ma04/0030990a00">
��ֻ��ǰ�����ؽ���ȷ����һ���취����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0031000a10">
�������Ҿ��ù���³ç����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0031010a00">
��������֪��ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0031020a10">
�������𳤡�����

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0031030a11">
��������
����������Ϊ��İ�ȫ���롣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0031040a00">
��ʵ����֮��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0031050a11">
�����Ǳز����ٵġ�
���ղţǣȣѲ��ǻ�˵�ɻ俴����ᦹ�
ӵ��ս����ô�����Լ���ᡣ��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0031060a00">
�������ס�
�������µ�������꣬�Ҳ�����������


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma04/0031070a00">
����Ȼ��ˣ����Խ���ϧ�����ַ�������
���Ǻš�
�������½⡣��

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0031080a10">
��������

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0031090a11">
���������������¡���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0031100a10">
����������
��û�취�˰���������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma04/0031110a11">
���ǡ���
��������˵�����¡�����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0031120a00">
��������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0031130a10">
��С�����£���������
��ǧ�����񡭡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0031140a00">
�����ɹ��ģ�ʵ���ҵ�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/ma04/0031150a10">
�������ɲ����͵���������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0031160a00">
�����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_004.nss"

}


