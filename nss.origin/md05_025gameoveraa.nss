
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_025gameoveraa.nss_MAIN
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
	$����ꇺ��ץե饰 = true;

	$PreGameName = $GameName;

	$GameName = "md05_025.nss";

}

scene md05_025gameoveraa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_025.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 100, "BLACK");

	CreateTextureEX("�}st100", 1200, -249, -364, "cg/st/resize/st�衩��_ͨ��_˽��_l.png");

	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev926_Ұ̫��ȫ��.jpg");
	Fade("�}����100", 0, 1000, null, true);

	FadeDelete("�ϱ���", 500, true);

	CreateColorEX("�ե�å����", 15000, "WHITE");

	OnSE("se����_냇��_�k��03",1000);

	Fade("�ե�å����",200,1000,null,true);

	Fade("�}����100", 0, 500, null, true);
	Fade("�}st100", 0, 1000, null, true);

	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");


//���¤���
//���衩�裨�饤���`��

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/025ga0040a07">
��ѽ�١���
�����ۺ�ʱ���ۺεض�����Ļ�飬
�����׻���Ҳ����

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/025ga0050a07">
������������Ұ̫���׻���
������˵����Ҫ���ϴ����׻�������
Ϊ��?!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ������`��



	OnSE("se����_������_�衩�褬���`", 1000);

	WaitKey(1500);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/025ga0060a07">
���ı߶����ء�
������������ģ�
��������˼�ҿ��յ��ˡ�
�ҿ��ǲ��Թ�ɫ�ĺ��ӡ���
  
{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/025ga0070a07">
����������������ս�������⣬Ϊ�����൱��
��������������������ˣ�
������޵���֮������������ˮ�ĸ�λ��
�������ౡ֮�������ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md05/025ga0080a07">
���������Ǿ�����Ϊ�λ��������أ�
��Ҫ��Ӻڶ����룬����ʱ������С��
һ׮��������
  
</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ʤ�����ʹ�ä��äݤ����ե�����
//���y�׶ȵ��I�ä��ơ����}�_ʼ

	OnSE("se�M��_냇��_���؏�", 1000);
	CreateColorEX("��ʹ���ޤ�����", 15000, "WHITE");
	Fade("��ʹ���ޤ�����", 1500, 1000, null, true);

	WaitKey(1000);

	ClearFadeAll(2000, true);



..//������ָ��
//�Υե����롡"md05_025.nss"

}


