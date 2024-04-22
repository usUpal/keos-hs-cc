module PageHeading = {
  // open ReactEvent
  @react.component
  let make = (
    ~title,
    ~subTitle=?,
    ~customTitleStyle="",
    ~customSubTitleStyle="text-lg font-medium",
    ~isTag=false,
    ~tagText="",
    ~customTagStyle="bg-extra-light-grey border-light-grey",
    ~leftIcon=None,
  ) => {
    open UIUtils
    let headerTextStyle = HSwitchUtils.getTextClass((H1, Optional))
    <div className="py-2">
      {switch leftIcon {
      | Some(icon) => <Icon name={icon} size=56 />
      | None => React.null
      }}
      <div className="flex items-center gap-4">
        <div className={`${headerTextStyle} pt-2 ${customTitleStyle}`}> {title->React.string} </div>
        <RenderIf condition=isTag>
          <div
            className={`text-sm text-grey-700 font-semibold border  rounded-full px-2 py-1 ${customTagStyle}`}>
            {tagText->React.string}
          </div>
        </RenderIf>
      </div>
      {switch subTitle {
      | Some(text) =>
        <RenderIf condition={text->LogicUtils.isNonEmptyString}>
          <div className={`opacity-50 mt-2 ${customSubTitleStyle}`}> {text->React.string} </div>
        </RenderIf>
      | None => React.null
      }}
    </div>
  }
}

module ContentSaidbar = {
  @react.component
  let make = (
    ~username1,
    ~username2="",
    ~username3="",
    ~username4="",
    ~title1="",
    ~title2="",
    ~number="",
    ~tabname="",
    ~subTitle="?",
    ~customTitleStyle="",
    ~customSubTitleStyle="text-lg font-medium",
    ~isTag=false,
    ~tagText="",
    ~customTagStyle="bg-extra-light-grey border-light-grey",
    ~leftIcon=None,
  ) => {
    open UIUtils
    let headerTextStyle = HSwitchUtils.getTextClass((H1, Optional))
    <div
      className="bg-[#F2F2F2] text-white w-full max-w-[300px]	rounded-md p-4 shadow-lg overflow-x-auto">
      {switch leftIcon {
      | Some(icon) => <Icon name={icon} size=56 />
      | None => React.null
      }}
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username1->React.string} </div>
          <div className="text-[12px]"> {title1->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username2->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username3->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username4->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username4->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username4->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username4->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username4->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username4->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>
      <div
        className="relative flex items-center gap-2  focus:text-white focus:bg-[#2963FF] py-2 px-3 rounded-md mt-3 cursor-pointer	">
        <img className="h-[40px] w-[40px] rounded-full object-cover" src={`/icons/LoadError.svg`} />
        <span
          className="top-[35px] left-[40px] absolute  w-3 h-3 bg-green-400 border-2 border-white dark:border-gray-800 rounded-full"
        />
        <div className="text-black">
          <div className="text-[16px] font-semibold	"> {username4->React.string} </div>
          <div className="text-[12px]"> {title2->React.string} </div>
        </div>
      </div>

      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-1')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //     {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-2')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //     {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-3')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //     {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-4')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //    {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-5')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //     {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-6')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //     {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-7')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //    {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-8')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //    {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-9')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //     {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
      // <button
      //   className="flex bg-white hover:bg-gray-100 border rounded-lg w-full h-22 py-4 px-4 my-2 items-center focus:outline-none focus:ring focus:ring-black" onClick={() => openTabs('step-10')}>
      //   <div
      //     className="flex items-center justify-center rounded-lg w-14 h-14 bg-gray-200 font-semibold text-black">
      //     {number->React.string}
      //   </div>
      //   <div className="flex items-center h-full pl-4">
      //     <span className="text-base font-semibold">
      //       {tabname->React.string}
      //     </span>
      //   </div>
      // </button>
    </div>
  }
}

module Contentarea = {
  @react.component
  let make = (
    ~title1,
    ~title2="",
    ~inner="",
    ~content="",
    ~details="",
    ~chat="",
    ~errortext="",
    ~errormessage="",
    ~security="",
    ~solicitar="",
    ~negar="",
    ~passport="",
    ~passportimginner="",
    ~lastname="",
    ~firstname="",
    ~thardname="",
    ~number="",
    ~maile="",
    ~birthdate="",
    ~birthplace="",
    ~information="",
    ~tipo="",
    ~authority="",
    ~sandmaile="",
    ~palaceissue="",
    ~expira="",
    ~issuedate="",
    ~opciones="",
    ~aprovar="",
    ~subTitle="?",
    ~customTitleStyle="",
    ~customSubTitleStyle="text-lg font-medium",
    ~isTag=false,
    ~tagText="",
    ~customTagStyle="bg-extra-light-grey border-light-grey",
    ~leftIcon=None,
  ) => {
    let (value, setValue) = React.useState(() => "")

    let handleChange = event => {
      setValue(ReactEvent.Form.target(event)["value"])
    }

    // let make = () => {
    // let (isOpen, setIsOpen) = React.useState(() => false)

    // let openModal = () => {
    //   setIsOpen(_ => true)
    // }

    // let closeModal = () => {
    //   setIsOpen(_ => false)
    // }

    open UIUtils
    let headerTextStyle = HSwitchUtils.getTextClass((H1, Optional))
    <div className="w-full  rounded-md p-4">
      {switch leftIcon {
      | Some(icon) => <Icon name={icon} size=56 />
      | None => React.null
      }}
      <div className="flex flex-col  gap-4">
        <div className=" text-[24px] font-medium"> {title1->React.string} </div>
        <div className="shadow-lg rounded-lg w-full p-5 bg-[#FFFCF5]">
          <div className="text-[18px] font-semibold	pb-5"> {errortext->React.string} </div>
          <div className="flex gap-2 items-center">
            <img
              className="h-[48px] w-[48px] rounded-[7px] object-cover" src={`/icons/LoadError.svg`}
            />
            <div
              className="flex items-center p-4 rounded-lg bg-[#E9A23B] text-white w-full border-2 border-[#E9A23B66]">
              <svg
                className="flex-shrink-0 w-4 h-4 dark:text-gray-300"
                xmlns="http://www.w3.org/2000/svg"
                fill="currentColor"
                viewBox="0 0 20 20">
                <path
                  d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z"
                />
              </svg>
              <span className="sr-only" />
              <div className="ms-3 text-sm font-medium text-white">
                {errormessage->React.string}
              </div>
              <button
                className="ms-auto -mx-1.5 -my-1.5  text-white rounded-[5px] focus:ring-2 focus:ring-gray-400 p-1.5 inline-flex items-center justify-center h-5 w-5 dark:bg-gray-800 dark:text-gray-300 dark:hover:bg-gray-700 dark:hover:text-white">
                <span className="sr-only" />
                <svg
                  className="w-3 h-3"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 14 14">
                  <path stroke="currentColor" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                </svg>
              </button>
            </div>
          </div>
          <div className="flex gap-2 items-center mt-3">
            <img
              className="h-[48px] w-[48px] rounded-[7px] object-cover" src={`/icons/LoadError.svg`}
            />
            <div
              className="flex items-center p-4 rounded-lg border bg-white border-[#E9A23B] text-[#E9A23B] w-full border-2 border-[#E9A23B66]">
              <svg
                className="flex-shrink-0 w-4 h-4 dark:text-[#E9A23B]"
                xmlns="http://www.w3.org/2000/svg"
                fill="currentColor"
                viewBox="0 0 20 20">
                <path
                  d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z"
                />
              </svg>
              <span className="sr-only" />
              <div className="ms-3 text-sm font-medium text-[#E9A23B]">
                {errormessage->React.string}
              </div>
              <button
                className="ms-auto -mx-1.5 -my-1.5  text-[#E9A23B] rounded-[5px] focus:ring-2 focus:ring-gray-400 p-1.5 inline-flex items-center justify-center h-5 w-5 dark:bg-gray-800 dark:text-gray-300 dark:hover:bg-gray-700 dark:hover:text-white">
                <span className="sr-only" />
                <svg
                  className="w-3 h-3"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 14 14">
                  <path stroke="currentColor" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                </svg>
              </button>
            </div>
          </div>
        </div>
        <div className="shadow-lg rounded-lg w-full p-5 bg-white">
          <div className=" flex items-center justify-between gap-4">
            <div className="bg-[#EAEAEA] rounded-md p-1 flex items-center gap-4">
              <div
                className="bg-white py-2 px-[35px] rounded-md cursor-pointer	 text-[14px] font-medium">
                {details->React.string}
              </div>
              <div className="py-2 px-[35px] rounded-md cursor-pointer	 text-[14px] font-medium">
                {chat->React.string}
              </div>
            </div>
            <div className="flex items-center gap-4">
              <div
                className="bg-white py-3 px-[20px] rounded-md cursor-pointer	border border-[#676E7629] text-[14px] font-medium">
                {security->React.string}
              </div>
              <div
                className="py-3 px-[25px] border border-[#676E7629] rounded-md cursor-pointer	 text-[14px] font-medium">
                {solicitar->React.string}
              </div>
              <div
                className="py-3 px-[20px] border-2 border-[#676E7629] rounded-md cursor-pointer	 text-[14px] font-medium">
                {negar->React.string}
              </div>
              <div
                className="py-3 px-[20px] border-2 border-[#676E7629] bg-[#2963FF] text-white rounded-md cursor-pointer	 text-[14px] font-medium">
                {aprovar->React.string}
              </div>
              // <div>
              //   <div
              //     className="py-3 px-[20px] border-2 border-[#676E7629] bg-[#2963FF] text-white rounded-md cursor-pointer text-[14px] font-medium"
              //     onClick={_ => openModal()}>
              //     {React.string("Click me to open modal")}
              //   </div>
              //   {isOpen &&
              //   <div className="modal">
              //     <div className="modal-content">
              //       <span className="close" onClick={_ => closeModal()}> {React.string("X")} </span>
              //       <p> {React.string("Modal content goes here.")} </p>
              //     </div>
              //   </div>}
              // </div>
            </div>
          </div>
        </div>
        <div className="shadow-md rounded-lg w-full p-5 bg-white">
          <div className="flex gap-4">
            <div className="w-full max-w-[600px]">
              <div className="text-[25px] font-medium text-[#2C2C2C]">
                {passport->React.string}
              </div>
              <div className="flex gap-3 ">
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {lastname->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className="max-w-[190px] border-2 border-[#676E7629] p-3 rounded-[10px] outline-none placeholder:text-[25px] placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="------"
                    />
                  </div>
                </div>
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {firstname->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className="max-w-[190px] border-2 border-[#676E7629] p-3 rounded-[10px] outline-none placeholder:text-[25px]  placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="------"
                    />
                  </div>
                </div>
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {thardname->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className="max-w-[190px] border-2 border-[#676E7629] p-3 rounded-[10px] outline-none placeholder:text-[25px]  placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="------"
                    />
                  </div>
                </div>
              </div>
              <div className="flex gap-3 pt-5">
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {number->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className="max-w-[190px] border-2 border-[#676E7629] p-3 rounded-[10px] outline-none placeholder:text-[25px] placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="------"
                    />
                  </div>
                </div>
                <div className="w-full">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {maile->React.string}
                  </label>
                  <div className="pt-2 w-full">
                    <input
                      className="border-2 w-full border-[#676E7629] p-3 rounded-[10px] outline-none placeholder:text-[25px]  placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="------"
                    />
                  </div>
                </div>
              </div>
              <div className="flex gap-3 pt-5">
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {birthdate->React.string}
                  </label>
                  <div className="pt-2  max-w-[190px]">
                    <input
                      className=" max-w-[190px] p-3 rounded-[10px] outline-[#9E9E9E] placeholder:text-[16px] placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="XXXXXXXXXXX"
                    />
                  </div>
                </div>
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {birthplace->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className=" max-w-[190px] p-3 rounded-[10px] outline-[#9E9E9E] placeholder:text-[16px]  placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="XXXXXXXXX"
                    />
                  </div>
                </div>
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {sandmaile->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className=" max-w-[190px] p-3 rounded-[10px] outline-[#9E9E9E] placeholder:text-[16px]  placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="XXXXXXX"
                    />
                  </div>
                </div>
              </div>
              <div className="text-[24px] font-medium py-[14px]"> {information->React.string} </div>
              <div className="flex gap-3 pt-5">
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {tipo->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className="max-w-[190px] p-3 rounded-[10px] outline-[#9E9E9E] placeholder:text-[16px] placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="XXXXXXXXXXX"
                    />
                  </div>
                </div>
                <div className="w-full">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {authority->React.string}
                  </label>
                  <div className="pt-2 w-full">
                    <input
                      className="w-full p-3 rounded-[10px] outline-[#9E9E9E] placeholder:text-[16px]  placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="XXXXXXXXX"
                    />
                  </div>
                </div>
              </div>
              <div className="flex gap-3 pt-5">
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {palaceissue->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className=" max-w-[190px] p-3 rounded-[10px] outline-[#9E9E9E] placeholder:text-[16px] placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="XXXXXXXXXXX"
                    />
                  </div>
                </div>
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {issuedate->React.string}
                  </label>
                  <div className="pt-2 max-w-[190px]">
                    <input
                      className=" max-w-[190px] p-3 rounded-[10px] outline-[#9E9E9E] placeholder:text-[16px]  placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="XXXXXXXXX"
                    />
                  </div>
                </div>
                <div className="">
                  <label className="text-[#9E9E9E] text-[14px] font-medium">
                    {expira->React.string}
                  </label>
                  <div className="pt-2  max-w-[190px]">
                    <input
                      className=" max-w-[190px] p-3 rounded-[10px] outline-[#9E9E9E] placeholder:text-[16px]  placeholder:text-[#565656]"
                      value
                      onChange=handleChange
                      placeholder="XXXXXXX"
                    />
                  </div>
                </div>
              </div>
            </div>
            <div className="w-full">
              <img
                className="h-[330px] w-[330px] rounded-[10px] object-cover bg-black"
                src={`/icons/LoadError.svg`}
              />
              <div className="text-[15px] font-medium text-[#2C2C2C] pt-2">
                {passportimginner->React.string}
              </div>
              <div className="pt-3 flex gap-3">
                <img
                  className="h-[50px] w-[50px] rounded-[10px] object-cover bg-black"
                  src={`/icons/LoadError.svg`}
                />
                <img
                  className="h-[50px] w-[50px] rounded-[10px] object-cover bg-black"
                  src={`/icons/LoadError.svg`}
                />
              </div>
              <div className="pt-[100px] flex gap-3">
                <div
                  className="py-3 px-[45px] border-2 border-[#676E7629] bg-white text-black rounded-md cursor-pointer	 text-[14px] font-medium">
                  {opciones->React.string}
                </div>
                <div
                  className="py-3 px-[45px] border-2 border-[#676E7629] bg-[#2963FF] text-white rounded-md cursor-pointer	 text-[14px] font-medium">
                  {aprovar->React.string}
                </div>
              </div>
            </div>
          </div>
        </div>

        // <div id="step-1" className="md:col-span-2 step-tab">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-2" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-3" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-4" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-5" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-6" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-7" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-8" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-9" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
        // <div id="step-10" className="col-span-2 step-tab" style="display:none">
        //   <div className="px-8">
        //     <h4 className="text-2xl font-semibold"> {content->React.string} </h4>
        //     <p className="text-base"> {inner->React.string} </p>
        //   </div>
        // </div>
      </div>
    </div>
  }
}
