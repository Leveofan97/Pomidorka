import controls.Button;
import controls.FocusablePanel;
import "MenuDelegate.qml";
import "Background.qml";
import "RightMenu.qml";
import "ClockFaceTimer.qml";
import "LeftMenu.qml";
import "BottomTaskSelected.qml";
import "BlueTheme.qml";
import "YellowTheme.qml";
import "RedTheme.qml";
import "FAQ.qml";

Application {

// TODO:  сделать рефакторинг кода
//				сделать графики
//				написать ридми и лицензию
//				придумать ещё todo

	id: mainView;
	color: "#010101";
/*--------------------------Фон (Gradient)---------------------------------*/
	Background {}
	YellowTheme {}
	BlueTheme {}
	RedTheme {}

/*--------------------------Правое меню задач---------------------------------*/

// TODO:  добавить окно для редактирования тасков +- (Окно есть но надо разобраться с их решением)
//				добавить окно добавления таска
//				добавить подтверждение удаления? удаление всех тасков?
//				Создание таска \\добавить переменные и связать с окном редактирования
// BUG:   отбражение имён тасков выходят за рамки
	RightMenu {}
// Комментарии по использованию ТаскЛиста:
// F1 - "Красная кнопка" - удаление выбранного таска
// F2 - "Зелёная кнопка" - сохранение выбранного таска
// F3 - "Жёлтая  кнопка" - редактирование выбранного таска
// F4 - "Синяя   кнопка" - пометить как выполненый?
/*---------------------------------Таймер-------------------------------------*/

// TODO:  добавить логику смены выставленного времени на отдых по 5 мин
//				воспроизведение звука после того как закончится время

//				добавить окно вылезающее после томата с вопросом "выполнил таск или нет?"
// или автоматически отмечать как выполненное или по сложности, кол-во сложностей = кол-во томатов
//				при выполнении таска переместить его в другой массив (Выполненых тасков)
// 				Bоспроизведение звука после того как закончится время
//				Написать FAQ
	ClockFaceTimer {}
	FAQ {}

/*---------------------------------Таймер-------------------------------------*/

// TODO: 
	BottomTaskSelected{}

/*------------------------Левое меню персонализации---------------------------*/

// TODO:
//				добавить FaQ и музыку ? а зачем она хD ?
	LeftMenu {}

/*----------------------------------------------------------------------------*/
  onStarted: {
		controltimerButton.setFocus();
    log("Приложение запущено!");
  }
}
