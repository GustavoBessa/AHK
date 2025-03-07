#Requires AutoHotkey v2.0
GuiHelp := Gui(, "Ajuda - Macro do Bessa") 
	ButtonK1 := GuiHelp.Add("Button", "x8 y16 w82 h59", "K1").OnEvent("Click", k1)
	ButtonK2 := GuiHelp.Add("Button", "x96 y16 w83 h59", "K2").OnEvent("Click", k2)
	ButtonK3 := GuiHelp.Add("Button", "x184 y16 w83 h59", "K3").OnEvent("Click", k3)
	ButtonK4 := GuiHelp.Add("Button", "x272 y16 w83 h59", "K4").OnEvent("Click", k4)
	ButtonK5 := GuiHelp.Add("Button", "x8 y75 w82 h59", "K5").OnEvent("Click", k5)
	ButtonK6 := GuiHelp.Add("Button", "x96 y75 w83 h59", "K6").OnEvent("Click", k6)
	ButtonK7 := GuiHelp.Add("Button", "x184 y75 w83 h59", "K7").OnEvent("Click", k7)
	ButtonK8 := GuiHelp.Add("Button", "x272 y75 w83 h59", "K8").OnEvent("Click", k8)
    ButtonK9 := GuiHelp.Add("Button", "x8 y135 w83 h59", "K9").OnEvent("Click", k9)
    ButtonK10 := GuiHelp.Add("Button", "x96 y135 w83 h59", "K10").OnEvent("Click", k10)
    ButtonK11 := GuiHelp.Add("Button", "x184 y135 w83 h59", "K11").OnEvent("Click", k11)
    ButtonK12 := GuiHelp.Add("Button", "x272 y135 w83 h59", "K12").OnEvent("Click", k12)

	
	k1(*)
	{
		ToolTip("ButtonK1 `n" 
            . "Game Mode `n"
            . "CapsLock: Desligar `n")
		SetTimer () => ToolTip(), -3000
	}
    k2(*)
	{
		ToolTip("Trocar Wallpaper")
		SetTimer () => ToolTip(), -3000
	}
    k3(*)
	{
	    ToolTip("Salvar clip Nvidia")
		SetTimer () => ToolTip(), -3000
	}
    k4(*)
	{
		ToolTip("Iniciar/Parar Clip Nvidia")
		SetTimer () => ToolTip(), -3000
	}
    k5(*)
	{
		ToolTip("ButtonK5 `n" 
			. "Print `n"
            . "CapsLock: Text Extract `n")
		SetTimer () => ToolTip(), -3000
	}
    k6(*)
	{
		ToolTip("Transição OBS")
		SetTimer () => ToolTip(), -3000
	}
    k7(*)
	{
		ToolTip("Mudar Cena Jogo + Camera")
		SetTimer () => ToolTip(), -3000
	}
    k8(*)
	{
		ToolTip("Mudar Cena Jogo Full Screen")
		SetTimer () => ToolTip(), -3000
	}
    k9(*)
	{
		ToolTip("ButtonK9 `n" 
            . "Abrir Calculadora `n"
            . "CapsLock: Fechar Calculadora `n")
		SetTimer () => ToolTip(), -3000
	}
    k10(*)
	{
		ToolTip("ButtonK10 `n" 
            . "Abrir Albion-Profit")
		SetTimer () => ToolTip(), -3000
	}
    k11(*)
	{
		ToolTip("ButtonK11 `n" 
            . "Voltar Música `n"
            . "CapsLock: Mute Mic `n")
		SetTimer () => ToolTip(), -3000
	}
    k12(*)
	{
		ToolTip("ButtonK12 `n" 
            . "Próxima Música `n"
            . "CapsLock: Trocar Audio output `n")
		SetTimer () => ToolTip(), -3000
	}
GuiHelp.Show()