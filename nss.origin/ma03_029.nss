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

scene ma03_029.nss_MAIN
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
	$Others_Flag = 0;
	$OthersFav_After = 0;

	if($����������){$�������ͻ�=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}

	$PreGameName = $GameName;
	$GameName = "ma04_001.nss";

}

scene ma03_029.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_028.nss"

//���\����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	Delete("�ϱ���");

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma03/0290010a12">
��������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(0, 1500);

//�����`���åȈ�ǰ����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg035_�`�}���`���åȸ��a_03.jpg");
	Fade("�}����100", 0, 1000, null, true);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	WaitKey(1000);

	CreateTextureEX("�}����200", 100, Center, Middle, "cg/bg/bg035_�`�}���`���åȸ��a_01.jpg");

	CreateSE("SE01","se����_����_����᤯01_L");
	MusicStart("SE01",4000,1000,0,1000,null,true);

	Fade("�}����200", 3000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����ֻ���������ά��Ա�ּǡ�

һ������һ�ա���һ�ش�ͣǣо�ս
����ʤ����壯��Ϯ��
����λ����ͣ�������Ȯ
����λ�����ϻᣯ�ң�-һ���ã�

�����ǰһֱ���ȵ��辩�ӵ�
������ڵ�ʮ��Ȧ�ĵ�һ�����ȴ
׹�ٲ���Ȩ��
�����⣬����Ҳ��������

����������������塤��Ϯ��ȴ���س�����
׹�������׻ٻ���
�����ֱ��϶�Ϊ��·�٣���֮����Ҳ������Ѷ��

����������ͬʱ��һ����ʦ�����ĳ�����������
��Ȼ����������ȴ��δ�Դ��¹�����̬��
�����˵���ݳ�����֮��һ�Ų�����

�����������¼��������ܲ⣬��˵��硣�������һ
��¼�����д����ǻ����޻���
��Ȼ�����ڴ�ͣǣб��������Χ��װ�׾������ʻ�
�Ŀ��������ѱ���Ϊ�ǲ�������ʵ��

���Ӽ�������ߵĸ��˷����������辩�ƽ����£���
���ַ���̬�ȵ������Ѿ���ӹ���ɡ�

�����ʻ�һ���ڰ����ߵ��л����ΰ룬Ȼ����·����
��Ϯ�����η���ȴ�����ѳ�Ϊ��ͣǣеĴ�˵��
��Ը����Ĩ��Ӱ�����䶫ɽ����ķ糱�Ѿ�������
���ɾ��ޣ��ޱ�ǿ�ҡ���

�����ǳ�Ϯ����̬�ȣ��Ž������������Բ��ʻ���
�����ֳ���ս���׵ľ��ġ�
����ʹ�ڴ�ͣǣ��ϰܱ����辩�ԶԲ��ʻ����л��룬
��Ҫʵ��Ҳ�����ڵ���ɡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(2000);

	ClearWaitAll(2000, 0);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_������.png");

	WaitKey(4000);

	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_��������.png");
	FadeDelete("�ϱ���", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//������������


}

..//������ָ��
//�Υե����롡"ma04_001.nss"

//������������������������������������������������

//����
/*============================================
������Ԓ�åܥ���

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//����·��
<voice name="��·" class="��·" src="voice/ex/0010090b24">
�������

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ex/0010100b24">
������ɱ���ң���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

============================================*/