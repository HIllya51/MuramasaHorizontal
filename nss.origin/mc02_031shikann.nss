//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031shikann.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();


	//�����٥�ȣã�
	#���٥�ȥե�������=true;

//�룺�ǥХå��ե饰
//$��_Flag=false;
//	$����֦����_Flag=true;
//	$���_Flag=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($��_Flag==false){
		if($����֦����_Flag==true){
			if($���_Flag==true){
				if($Ş�L���E_Flag==true){
					call_scene @->mc02_031shikann_No.nss;
					$shikann_k=false;
					$shikann_No=true;
				}else{
					call_scene @->mc02_031shikann_k.nss;
					$shikann_k=true;
					$shikann_No=false;
				}
			}else{
				call_scene @->mc02_031shikann_No.nss;
				$shikann_k=false;
				$shikann_No=true;
			}
		}else{
			call_scene @->mc02_031shikann_No.nss;
			$shikann_k=false;
			$shikann_No=true;
		}
	}else{
		call_scene @->mc02_031shikann_No.nss;
		$shikann_k=false;
		$shikann_No=true;
	}


	if($shikann_k==true){
		$PreGameName = $GameName;
		$GameName = "mc02_031rouka1.nss";
		$��_Flag = true;
		$shikann_k=false;
		$shikann_No=false;
	}else if($shikann_No==true){
		$PreGameName = $GameName;
		$GameName = "mc02_031rouka1.nss";
		$shikann_k=false;
		$shikann_No=false;
	}

//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031shikann.nss
{
..//������ָ��
//ǰ�ե����롡"mc02_031rouka1.nss"

//��ʿ����
//������֦��������ӡ��ƤΣ��ĤΥե饰���j�ߤޤ�
//����Ӥ�����֦���������ʤ��Ȱk�����ޤ���

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������ӥե饰�ʤ�
//�룺�ޤ��Ͼ�_Flag�򤹤ǤˤȤäƤ������
//�����_Flag���ʤ�����
scene mc02_031shikann_No.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se�ճ�_����_���_��01", 1000);


	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Aa_01a.jpg");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������ʿ���ҡ�
��ʮ����С����ȴ��ʧƷ�ʡ�

��Ȼ������ȫ�о������˵����¡�����������˾�ס��
���巿�������������ԣ��Ҿ߶��Ǳ���ġ�
���ⷿ������˲�����ʱ��ϯ�����Ǵ�һ��ʼ��û�в�
����ս�ɡ�

��Ŀ֮������ֻ�����Ӻʹ�����
���������ŷ羰���Ļ��򡣻λ����Ƶذڶ��ţ������
��Ϊ�������ƶ��ɣ������ƺ�ԭ���ҵþͲ��ȶ���˵��
��ʲôʱ��ͻ��������

����δ���ֿ�����Ʒ������ը��֮��ġ�
��ȥ�����ط�����Ѱ�Ҳ����ϲߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//���������£�

..//������ָ��
//�Υե����롡"mc02_031rouka1.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������ӥե饰���ꡢ������ǰ
//�����_Flag�����ꡢ���ľ�_Flag���o������
scene mc02_031shikann_k.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se�ճ�_����_���_��01", 1000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ad_01a.jpg");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ƺ���ʿ���ҡ�
��û����Ӱ��Ҳûʲô����֮������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031sh0010a03">
�������ף�
���������ˣ����Ǹ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031sh0020a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������ͨ�����ķ羰���Ļ��򣬵��ڵذ��ϡ�
�������Ѿ�ȫ����ʰ�����������Ҳ������һ��ʼ
�����Ǹ����ӡ�

������ΪʲôԵ�ʲŵ������İɡ�
��ԭ���ǡ���<k>�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/mc02/031sh0030a04">
���ǰ����𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031sh0040a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ǽ�ڵ�һ�ǣ��ڳ�һ�����εĿն���Ϊ����ռ䡣
�һ���Ĺ��Ӿ������Ϸ���
��Ҳ����˵������������Ŀ����Ϊ�����غ����
����

�������򰵸��ó�����Ķ���һ��������
��
�������Ǿ�ƿ��

����ǩ�ϵ�������Ӣ�
�����滹�����������׶��������ӷ�װ��ʿ��
ͼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031sh0050a03">
����Ӣ�����˰�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031sh0060a04">
�������ƺ�������
����ô���ն����ˣ����Ҫ�ȵĻ��������ʲô
����Ū������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031sh0070a00">
���Ҳ��ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ȼ���ȡ���
���������������Űɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//���ե饰�{��
//��$��_Flag = true;

//���������£�

..//������ָ��
//�Υե����롡"mc02_031rouka1.nss"




}
