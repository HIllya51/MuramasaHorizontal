
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama01cc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg055_ɽ�\������_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($md05_���LĿ==true){$���IĿ�ģ�_Flag = true;}
	else{$���IĿ��_Flag = true;}

	$PreGameName = $GameName;

	$GameName = "md05_004urayama01.nss";
	//�Ƅ��Ȥρ����Ǥ������M�ߤ���r������ԭ�_�J

}

scene md05_004urayama01cc.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004urayama01c.nss"


//��Ŀ�Ĥ���
//���ե饰���

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0, "cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(0, true);

	Delete("�ϱ���");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ڶ����A

if($md05_���LĿ==true){

	SetFwC("cg/fw/fw���I_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0070b31">
����һ������ʲô������
���ڵ��°ɡ�
�����ǣ�ʲô������Ҳ����Ŷ����

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0080b31">
����ν�޷��������ϵĺ�ڣ�
���������ܵ��𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե饰�{��
//��$���IĿ�ģ�_Flag = true;


}else{


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A

	SetFwC("cg/fw/fw���I_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0050b31">
�����Ŀ�ģ�
������ѭ�Լ�������ᶨ�ػ���ȥ������

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0060b31">
��һ���������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
//��$���IĿ��_Flag = true;

}//else_end


..//������ָ��
//�Υե�����


}

