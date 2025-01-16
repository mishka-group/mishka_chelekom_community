defmodule CommunityDemoWeb.HomeLive do
  use CommunityDemoWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(page_title: "Home")

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <section class="text-[#202020] dark:text-[#f6f6f6]">
      <div class={["max-w-6xl mx-auto px-5 lg:px-2 space-y-10 py-16"]}>
        <h4 class="text-center sm:text-2xl lg:text-4xl font-bold dark:text-[#cacfd2]">
          Chelekom Components
        </h4>
        <div class={["grid gap-5 sm:grid-cols-2 lg:grid-cols-4"]}>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="grid grid-cols-3 gap-1 p-2">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] p-1 rounded-sm">
                    <div class="rounded-full size-3 mx-auto bg-[#b5b5bd] dark:bg-[#606064] mb-1.5">
                    </div>
                    <div class="rounded-full w-full h-[0.18rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.15rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-2/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-sm w-full h-[.4rem] bg-[#b5b5bd] dark:bg-[#606064] mt-2">
                    </div>
                  </div>
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] p-1 rounded-sm">
                    <div class="rounded-full size-3 mx-auto bg-[#b5b5bd] dark:bg-[#606064] mb-1.5">
                    </div>
                    <div class="rounded-full w-full h-[0.18rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.15rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-2/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-sm w-full h-[.4rem] bg-[#b5b5bd] dark:bg-[#606064] mt-2">
                    </div>
                  </div>
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] p-1 rounded-sm">
                    <div class="rounded-full size-3 mx-auto bg-[#b5b5bd] dark:bg-[#606064] mb-1.5">
                    </div>
                    <div class="rounded-full w-full h-[0.18rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.15rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-2/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-sm w-full h-[.4rem] bg-[#b5b5bd] dark:bg-[#606064] mt-2">
                    </div>
                  </div>
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] p-1 rounded-sm">
                    <div class="rounded-full size-3 mx-auto bg-[#b5b5bd] dark:bg-[#606064] mb-1.5">
                    </div>
                    <div class="rounded-full w-full h-[0.18rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.15rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-sm w-full h-[.4rem] bg-[#b5b5bd] dark:bg-[#606064] mt-2">
                    </div>
                  </div>
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] p-1 rounded-sm">
                    <div class="rounded-full size-3 mx-auto bg-[#b5b5bd] dark:bg-[#606064] mb-1.5">
                    </div>
                    <div class="rounded-full w-4/5 h-[.15rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-2/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-sm w-full h-[.4rem] bg-[#b5b5bd] dark:bg-[#606064] mt-2">
                    </div>
                  </div>
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] p-1 rounded-sm">
                    <div class="rounded-full size-3 mx-auto bg-[#b5b5bd] dark:bg-[#606064] mb-1.5">
                    </div>
                    <div class="rounded-full w-4/5 h-[.15rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-4/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-full w-2/5 h-[.12rem] bg-[#b5b5bd] dark:bg-[#606064] mb-1">
                    </div>
                    <div class="rounded-sm w-full h-[.4rem] bg-[#b5b5bd] dark:bg-[#606064] mt-2">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Cards
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-[65%]">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] p-1 rounded-sm relative h-full flex justify-center items-center">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke-width="1.5"
                      stroke="currentColor"
                      class="size-6"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="m2.25 15.75 5.159-5.159a2.25 2.25 0 0 1 3.182 0l5.159 5.159m-1.5-1.5 1.409-1.409a2.25 2.25 0 0 1 3.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 0 0 1.5-1.5V6a1.5 1.5 0 0 0-1.5-1.5H3.75A1.5 1.5 0 0 0 2.25 6v12a1.5 1.5 0 0 0 1.5 1.5Zm10.5-11.25h.008v.008h-.008V8.25Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"
                      />
                    </svg>

                    <div class="rounded-full size-2 left-1 top-1/2 bg-[#b5b5bd] dark:bg-[#606064] absolute">
                    </div>
                    <div class="rounded-full size-2 right-1 top-1/2 bg-[#b5b5bd] dark:bg-[#606064] absolute">
                    </div>
                    <div class="absolute bottom-1 inset-x-0 flex items-center justify-center gap-1">
                      <div class="rounded-full size-[2px] right-1/2 bottom-1 bg-[#b5b5bd] dark:bg-[#606064]">
                      </div>
                      <div class="rounded-full size-[2px] right-1/2 bottom-1 bg-[#b5b5bd] dark:bg-[#606064]">
                      </div>
                      <div class="rounded-full size-[2px] right-1/2 bottom-1 bg-[#b5b5bd] dark:bg-[#606064]">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Carousel
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] p-1 rounded-sm relative h-full">
                    <div>
                      <div class="grid grid-cols-2 gap-2">
                        <div>
                          <div class="rounded-sm h-0.5 mb-0.5 w-3 bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="rounded-sm h-2 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div>
                          <div class="rounded-sm h-0.5 mb-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="rounded-sm h-2 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div>
                          <div class="rounded-sm h-0.5 mb-0.5 w-3.5 bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="rounded-sm h-2 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div>
                          <div class="rounded-sm h-0.5 mb-0.5 w-3.5 bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="rounded-sm h-2 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                      </div>
                      <div class="mt-2">
                        <div class="rounded-sm h-0.5 mb-0.5 w-5 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-sm h-[21px] bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                      <div class="flex justify-end">
                        <div class="rounded-sm w-8 h-3 mt-2 bg-[#b5b5bd] dark:bg-[#606064] flex items-center justify-center">
                          <svg
                            aria-hidden="true"
                            class="size-[7px] text-gray-900 animate-spin dark:text-[#f3efef]"
                            viewBox="0 0 100 101"
                            fill="none"
                            xmlns="http://www.w3.org/2000/svg"
                          >
                            <path
                              d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
                              fill="currentColor"
                            />
                            <path
                              d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
                              fill="currentFill"
                            />
                          </svg>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Forms
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="rounded-sm h-full bg-[#e5e7e8] dark:bg-[#323038] px-3">
                    <div class="flex gap-1 pt-1">
                      <div class="size-2.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="w-10 h-6 rounded-e rounded-es mt-0.5 bg-[#b5b5bd] dark:bg-[#606064]">
                      </div>
                    </div>
                    <div class="flex justify-end gap-1">
                      <div class="w-10 h-4 rounded-s rounded-ee mt-0.5 bg-[#b5b5bd] dark:bg-[#606064]">
                      </div>
                      <div class="size-2.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                    </div>
                    <div class="flex gap-1 py-1">
                      <div class="size-2.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="w-10 h-2 rounded-e rounded-es mt-0.5 bg-[#b5b5bd] dark:bg-[#606064]">
                      </div>
                    </div>
                    <div class="flex justify-end gap-1">
                      <div class="w-10 h-5 rounded-s rounded-ee mt-0.5 bg-[#b5b5bd] dark:bg-[#606064]">
                      </div>
                      <div class="size-2.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                    </div>
                    <div class="flex gap-1 py-1">
                      <div class="size-2.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="w-10 h-9 rounded-e rounded-es mt-0.5 bg-[#b5b5bd] dark:bg-[#606064]">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Chat
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] rounded-sm relative h-full">
                    <div class="rounded-sm h-2 border-b dark:border-[#606064]"></div>
                    <div class="grid grid-cols-5 h-full">
                      <div class="col-span-1 h-full">
                        <div class="h-full border-e dark:border-[#606064] space-y-1 p-0.5 py-1">
                          <div class="flex gap-1 items-center">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                          <div class="flex gap-1 items-center">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                          <div class="flex gap-1 items-center">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                          <div class="flex gap-1 items-center">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                          <div class="flex gap-1 items-center mt-1 border-t dark:border-[#76767a] pt-1">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                          <div class="flex gap-1 items-center">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                          <div class="flex gap-1 items-center">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                          <div class="flex gap-1 items-center">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                          <div class="flex gap-1 items-center">
                            <div class="rounded-sm size-1 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                            <div class="rounded-sm h-0.5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          </div>
                        </div>
                      </div>
                      <div class="col-span-4 p-2 space-y-2">
                        <div class="rounded-sm h-5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="flex gap-1">
                          <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-sm h-6 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Menu
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] rounded-sm relative h-full p-1">
                    <div class="rounded-sm h-3 bg-[#b5b5bd] dark:bg-[#606064] flex justify-between px-2 items-center">
                      <div class="size-2 rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="flex gap-1">
                        <div class="h-[3px] w-2 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-2.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-1.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-3 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                    </div>

                    <div class="p-2 space-y-2">
                      <div class="rounded-sm h-5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="flex gap-1">
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                      <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="rounded-sm h-6 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Navbar
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] rounded-sm relative h-full p-1 overflow-hidden">
                    <div class="absolute inset-0 bg-black/10 dark:bg-black/50 backdrop-blur-[1px]">
                    </div>
                    <div class="absolute w-9 inset-y-0 left-0 px-1 py-1.5 bg-[#74747a] dark:bg-[#48484d]">
                      <div class="h-[3px] w-3.5 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="mt-2 space-y-1">
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          <div class="size-1 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          <div class="size-1 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                        <div class="flex items-center justify-between gap-0.5">
                          <div class="size-1.5 shrink-0 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]">
                          </div>
                          <div class="h-[3px] w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                      </div>
                    </div>
                    <div class="rounded-sm h-3 bg-[#b5b5bd] dark:bg-[#606064] flex justify-between px-2 items-center">
                      <div class="size-2 rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="flex gap-1">
                        <div class="h-[3px] w-2 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-2.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-1.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                    </div>
                    <div class="p-2 space-y-2">
                      <div class="rounded-sm h-5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="flex gap-1">
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                      <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="rounded-sm h-6 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Drawer
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] rounded-sm relative h-full p-1 overflow-hidden">
                    <div class="absolute inset-0 bg-black/10 dark:bg-black/50 backdrop-blur-[1px] flex justify-center pt-4">
                      <div class="size-16 px-1 py-1.5 bg-[#74747a] dark:bg-[#48484d] rounded relative">
                        <span class="absolute right-[2px] top-[1px]">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-2"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="M6 18 18 6M6 6l12 12"
                            />
                          </svg>
                        </span>
                        <div class="h-1 w-5/6 rounded-sm bg-[#b5b5bd] dark:bg-[#606064] mt-2 mb-1">
                        </div>
                        <div class="h-2 w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064] mb-1"></div>
                        <div class="h-2 w-full rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="flex justify-end mt-2 gap-1">
                          <div class="h-2 w-5 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                          <div class="h-2 w-5 rounded-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        </div>
                      </div>
                    </div>
                    <div class="rounded-sm h-3 bg-[#b5b5bd] dark:bg-[#606064] flex justify-between px-2 items-center">
                      <div class="size-2 rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="flex gap-1">
                        <div class="h-[3px] w-2 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-2.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-1.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                    </div>
                    <div class="p-2 space-y-2">
                      <div class="rounded-sm h-5 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="flex gap-1">
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                      <div class="rounded-sm h-3 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="rounded-sm h-6 w-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Modal
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] rounded-sm relative h-full p-1 overflow-hidden">
                    <div class="flex gap-2 items-center justify-between my-1">
                      <div class="rounded-sm h-2 w-12 bg-[#b5b5bd] dark:bg-[#606064] px-0.5 flex items-center justify-end">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-1.5"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z"
                          />
                        </svg>
                      </div>
                      <div class="flex gap-1">
                        <div class="h-1.5 w-2.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-1.5 w-3 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-1.5 w-5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                    </div>
                    <div class="bg-[#79797c] mt-2 rounded-sm h-3 grid grid-cols-4 gap-px items-center px-1">
                      <div class="w-2"></div>
                      <div class="h-1 w-3.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="h-1 w-5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="h-1 w-3 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                    </div>
                    <div class="mt-0.5">
                      <div class="bg-[#606064]/50 rounded-sm h-3 grid grid-cols-4 gap-px items-center px-1">
                        <div class="size-2 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>

                        <div class="h-0.5 w-3.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-3.5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                    </div>
                    <div class="mt-0.5">
                      <div class="bg-[#606064]/50 rounded-sm h-3 grid grid-cols-4 gap-px items-center px-1">
                        <div class="size-2 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>

                        <div class="h-0.5 w-3 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-3 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-5 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                    </div>
                    <div class="mt-0.5">
                      <div class="bg-[#606064]/50 rounded-sm h-3 grid grid-cols-4 gap-px items-center px-1">
                        <div class="size-2 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>

                        <div class="h-0.5 w-4 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-3 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-4 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                    </div>
                    <div class="mt-0.5">
                      <div class="bg-[#606064]/50 rounded-sm h-3 grid grid-cols-4 gap-px items-center px-1">
                        <div class="size-2 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>

                        <div class="h-0.5 w-4 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-4 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-3 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                    </div>
                    <div class="mt-0.5">
                      <div class="bg-[#606064]/50 rounded-sm h-3 grid grid-cols-4 gap-px items-center px-1">
                        <div class="size-2 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>

                        <div class="h-0.5 w-4 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-4 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-3 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                    </div>
                    <div class="mt-0.5">
                      <div class="bg-[#606064]/50 rounded-sm h-3 grid grid-cols-4 gap-px items-center px-1">
                        <div class="size-2 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>

                        <div class="h-0.5 w-4 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-4 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="h-0.5 w-3 rounded-full bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Table
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="flex items-center gap-1 mt-2">
                      <div class="h-1.5 w-5 rounded-t-sm bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="h-1.5 w-5 rounded-t-sm dark:bg-[#737377]"></div>
                      <div class="h-1.5 w-5 rounded-t-sm dark:bg-[#737377]"></div>
                    </div>
                    <div class="h-20 w-ful rounded-b-sm bg-[#b5b5bd] dark:bg-[#606064] px-1 pt-2 space-y-1">
                      <div class="h-1 w-10 rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                      <div class="h-1 w-12 rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                      <div class="h-1 w-full rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                      <div class="h-1 w-full rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                      <div class="h-1 w-full rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                      <div class="h-1 w-full rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                      <div class="h-1 w-10 rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                      <div class="h-1 w-14 rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                      <div class="h-1 w-14 rounded-sm bg-[#74747a] darak:bg-[#48484D]"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Tabs
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full bg-[#e5e7e8] dark:bg-[#323038] relative">
                    <div class="absolute w-16 top-3 right-[2px] space-y-1">
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex justify-end items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex justify-end items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex justify-end items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex justify-end items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                    </div>
                    <div class="absolute w-16 bottom-3 left-[2px] space-y-1">
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                      <div class="h-2.5 w-full rounded-sm px-1 bg-[#b5b5bd] dark:bg-[#606064] flex items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Toast
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-4 h-full bg-[#e5e7e8] dark:bg-[#323038] relative">
                    <div class="border-s border-[#606064] relative h-3.5 pt-1">
                      <div class="size-[4px] rounded-full bg-[#b5b5bd] dark:bg-[#606064] absolute top-0 -left-[0.144rem]">
                      </div>
                      <div class="ms-1 w-full h-[3px] bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-full h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded"></div>
                    </div>
                    <div class="border-s border-[#606064] relative h-5 pt-1.5">
                      <div class="size-[4px] rounded-full bg-[#b5b5bd] dark:bg-[#606064] absolute top-0 -left-[0.144rem]">
                      </div>
                      <div class="ms-1 w-full h-[3px] bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-full h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-5 h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded"></div>
                    </div>
                    <div class="border-s border-[#606064] relative h-5 pt-1.5">
                      <div class="size-[4px] rounded-full bg-[#b5b5bd] dark:bg-[#606064] absolute top-0 -left-[0.144rem]">
                      </div>
                      <div class="ms-1 w-full h-[3px] bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-full h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-5 h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded"></div>
                    </div>
                    <div class="border-s border-[#606064] relative h-5 pt-1.5">
                      <div class="size-[4px] rounded-full bg-[#b5b5bd] dark:bg-[#606064] absolute top-0 -left-[0.144rem]">
                      </div>
                      <div class="ms-1 w-full h-[3px] bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-full h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-5 h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded"></div>
                    </div>
                    <div class="border-s border-[#606064] relative h-5 pt-1.5">
                      <div class="size-[4px] rounded-full bg-[#b5b5bd] dark:bg-[#606064] absolute top-0 -left-[0.144rem]">
                      </div>
                      <div class="ms-1 w-full h-[3px] bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-full h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded mb-0.5">
                      </div>
                      <div class="ms-1 w-5 h-0.5 bg-[#b5b5bd] dark:bg-[#606064] rounded"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Timeline
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full bg-[#e5e7e8] dark:bg-[#323038] relative">
                    <div class="flex items-center gap-1 py-3">
                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-[5px]"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="m4.5 12.75 6 6 9-13.5"
                            />
                          </svg>
                        </div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                      <div class="h-[1px] bg-[#b5b5bd] dark:bg-[#606064] w-full"></div>
                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                      <div class="h-[1px] bg-[#b5b5bd] dark:bg-[#606064] w-full"></div>

                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                    </div>
                    <div class="flex items-center gap-1 py-3">
                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-[5px]"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="m4.5 12.75 6 6 9-13.5"
                            />
                          </svg>
                        </div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                      <div class="h-[1px] bg-[#b5b5bd] dark:bg-[#606064] w-full"></div>
                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-[5px]"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="m4.5 12.75 6 6 9-13.5"
                            />
                          </svg>
                        </div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                      <div class="h-[1px] bg-[#b5b5bd] dark:bg-[#606064] w-full"></div>

                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                    </div>
                    <div class="flex items-center gap-1 py-3">
                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-[5px]"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="m4.5 12.75 6 6 9-13.5"
                            />
                          </svg>
                        </div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                      <div class="h-[1px] bg-[#b5b5bd] dark:bg-[#606064] w-full"></div>
                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-[5px]"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="m4.5 12.75 6 6 9-13.5"
                            />
                          </svg>
                        </div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                      <div class="h-[1px] bg-[#b5b5bd] dark:bg-[#606064] w-full"></div>

                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-[5px]"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="m4.5 12.75 6 6 9-13.5"
                            />
                          </svg>
                        </div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                    </div>
                    <div class="flex items-center gap-1 py-3">
                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-[5px]"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="m4.5 12.75 6 6 9-13.5"
                            />
                          </svg>
                        </div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                      <div class="h-[1px] bg-[#b5b5bd] dark:bg-[#606064] w-full"></div>
                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                      <div class="h-[1px] bg-[#b5b5bd] dark:bg-[#606064] w-full"></div>

                      <div class="flex gap-1 items-center">
                        <div class="size-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        <div class="space-y-1">
                          <div class="h-1 w-3.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                          <div class="h-0.5 w-2.5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Stepper
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full bg-[#e5e7e8] dark:bg-[#323038] relative">
                    <div class="py-3">
                      <div class="grid grid-cols-2 gap-2">
                        <div class="space-y-1">
                          <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm p-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                            <div class="h-0.5 w-full bg-[#74747a] darak:bg-[#48484D] rounded-sm mt-2">
                            </div>
                            <div class="h-0.5 w-10 bg-[#74747a] darak:bg-[#48484D] rounded-sm mt-0.5">
                            </div>
                          </div>
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                        </div>
                        <div class="space-y-1">
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                        </div>
                        <div class="space-y-1">
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                        </div>
                        <div class="space-y-1">
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                        </div>
                        <div class="space-y-1">
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                        </div>
                        <div class="space-y-1">
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                          <div class="h-2.5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center px-1">
                            <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Accordion
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full bg-[#e5e7e8] dark:bg-[#323038] relative">
                    <div class="space-y-1">
                      <div class="h-4 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm p-1 flex items-center justify-between">
                        <div>
                          <div class="h-0.5 w-6 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                          <div class="h-0.5 w-16 bg-[#74747a] darak:bg-[#48484D] rounded-sm mt-0.5">
                          </div>
                        </div>

                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12"
                          />
                        </svg>
                      </div>
                      <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm"></div>
                      <div class="grid grid-cols-2 gap-1">
                        <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm"></div>
                        <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm"></div>
                        <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm"></div>
                        <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm"></div>
                      </div>
                      <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Alert
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full bg-[#e5e7e8] dark:bg-[#323038] relative">
                    <div class="grid grid-cols-2 gap-2">
                      <div class="flex -space-x-1 items-center">
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477]">
                        </div>
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477]">
                        </div>
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477]">
                        </div>
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477]">
                        </div>
                      </div>
                      <div class="flex -space-x-1 items-center">
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477]">
                        </div>
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477]">
                        </div>
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477]">
                        </div>
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477]">
                        </div>
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477] flex items-center justify-center text-[7px] text-[#9d9da0 ]">
                          +9
                        </div>
                      </div>
                    </div>
                    <div class="flex items-center justify-between flex-wrap gap-1 mt-2">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] p-1 rounded w-full mb-1.5 flex items-center gap-1">
                        <div class="relative size-6 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477] flex items-center justify-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke-width="1.5"
                            stroke="currentColor"
                            class="size-3"
                          >
                            <path
                              stroke-linecap="round"
                              stroke-linejoin="round"
                              d="m2.25 15.75 5.159-5.159a2.25 2.25 0 0 1 3.182 0l5.159 5.159m-1.5-1.5 1.409-1.409a2.25 2.25 0 0 1 3.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 0 0 1.5-1.5V6a1.5 1.5 0 0 0-1.5-1.5H3.75A1.5 1.5 0 0 0 2.25 6v12a1.5 1.5 0 0 0 1.5 1.5Zm10.5-11.25h.008v.008h-.008V8.25Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"
                            />
                          </svg>
                          <span class="absolute animate-ping size-1 top-[1px] right-[1px] rounded-full bg-[#efefef]">
                          </span>
                        </div>
                        <div class="space-y-1">
                          <div class="h-1 w-8 bg-[#74747a] darak:bg-[#48484D] rounded"></div>
                          <div class="h-1 w-16 bg-[#74747a] darak:bg-[#48484D] rounded"></div>
                        </div>
                      </div>
                      <div class="size-5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477] flex items-center justify-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-3"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m2.25 15.75 5.159-5.159a2.25 2.25 0 0 1 3.182 0l5.159 5.159m-1.5-1.5 1.409-1.409a2.25 2.25 0 0 1 3.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 0 0 1.5-1.5V6a1.5 1.5 0 0 0-1.5-1.5H3.75A1.5 1.5 0 0 0 2.25 6v12a1.5 1.5 0 0 0 1.5 1.5Zm10.5-11.25h.008v.008h-.008V8.25Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"
                          />
                        </svg>
                      </div>
                      <div class="size-5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477] flex items-center justify-center text-[9px] text-[#9d9da0]">
                        SH
                      </div>
                      <div class="size-5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477] flex items-center justify-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-3"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m2.25 15.75 5.159-5.159a2.25 2.25 0 0 1 3.182 0l5.159 5.159m-1.5-1.5 1.409-1.409a2.25 2.25 0 0 1 3.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 0 0 1.5-1.5V6a1.5 1.5 0 0 0-1.5-1.5H3.75A1.5 1.5 0 0 0 2.25 6v12a1.5 1.5 0 0 0 1.5 1.5Zm10.5-11.25h.008v.008h-.008V8.25Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"
                          />
                        </svg>
                      </div>
                      <div class="size-5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477] flex items-center justify-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-3"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m2.25 15.75 5.159-5.159a2.25 2.25 0 0 1 3.182 0l5.159 5.159m-1.5-1.5 1.409-1.409a2.25 2.25 0 0 1 3.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 0 0 1.5-1.5V6a1.5 1.5 0 0 0-1.5-1.5H3.75A1.5 1.5 0 0 0 2.25 6v12a1.5 1.5 0 0 0 1.5 1.5Zm10.5-11.25h.008v.008h-.008V8.25Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z"
                          />
                        </svg>
                      </div>

                      <div class="size-5 bg-[#b5b5bd] dark:bg-[#606064] rounded-full border border-[#747477] flex items-center justify-center text-[9px] text-[#9d9da0]">
                        M
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Avatar
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="h-20 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex justify-center items-center relative">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="size-8"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"
                        />
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M15.91 11.672a.375.375 0 0 1 0 .656l-5.603 3.113a.375.375 0 0 1-.557-.328V8.887c0-.286.307-.466.557-.327l5.603 3.112Z"
                        />
                      </svg>
                      <div class="absolute h-1 w-16 bottom-[4px] left-1/2 rounded-sm -translate-x-1/2 bg-[#74747a] darak:bg-[#48484D]">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Video
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full space-y-1">
                    <div class="w-full bg-[#e5e7e8] dark:bg-[#323038] rounded-sm flex items-center gap-1 p-1">
                      <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full animate-pulse shrink-0">
                      </div>
                      <div class="space-y-1 flex-1">
                        <div class="h-1 w-10 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                        <div class="h-1 w-16 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                      </div>
                    </div>
                    <div class="w-full bg-[#e5e7e8] dark:bg-[#323038] rounded-sm flex items-center gap-1 p-1">
                      <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full animate-pulse shrink-0">
                      </div>
                      <div class="space-y-1 flex-1">
                        <div class="h-1 w-10 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                        <div class="h-1 w-16 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                      </div>
                    </div>
                    <div class="w-full bg-[#e5e7e8] dark:bg-[#323038] rounded-sm flex items-center gap-1 p-1">
                      <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full animate-pulse shrink-0">
                      </div>
                      <div class="space-y-1 flex-1">
                        <div class="h-1 w-10 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                        <div class="h-1 w-16 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                      </div>
                    </div>
                    <div class="w-full bg-[#e5e7e8] dark:bg-[#323038] rounded-sm flex items-center gap-1 p-1">
                      <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full animate-pulse shrink-0">
                      </div>
                      <div class="space-y-1 flex-1">
                        <div class="h-1 w-10 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                        <div class="h-1 w-16 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                      </div>
                    </div>
                    <div class="w-full bg-[#e5e7e8] dark:bg-[#323038] rounded-sm flex items-center gap-1 p-1">
                      <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full animate-pulse shrink-0">
                      </div>
                      <div class="space-y-1 flex-1">
                        <div class="h-1 w-10 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                        <div class="h-1 w-16 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm animate-pulse">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Skeleton
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="dark:bg-[#323038] h-full pt-2">
                    <div class="flex flex-nowrap justify-center gap-1 px-2 text-[#2f2f33] dark:text-[#525255]">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                    </div>
                    <div class="flex flex-nowrap justify-center gap-1 px-2 text-[#606064] dark:text-white mt-2">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                    </div>
                    <div class="flex flex-nowrap justify-center gap-1 px-2 mt-2 text-[#606064] dark:text-[#525255] [&_.rate-star:has(~.rate-star:hover)]:text-[#2f2f33] dark:[&_.rate-star:has(~.rate-star:hover)]:text-white">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5 rate-star transition-all duration-100 text-[#2f2f33] dark:text-white"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5 rate-star transition-all duration-100 hover:text-[#2f2f33] dark:hover:text-white"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5 rate-star transition-all duration-100 hover:text-[#2f2f33] dark:hover:text-white"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-5 rate-star transition-all duration-100 hover:text-[#2f2f33] dark:hover:text-white"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.006 5.404.434c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.434 2.082-5.005Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Rating
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full w-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="grid grid-cols-2 gap-1">
                      <div class="space-y-1">
                        <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            fill="currentColor"
                            class="size-4"
                          >
                            <path
                              fill-rule="evenodd"
                              d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                              clip-rule="evenodd"
                            />
                          </svg>
                        </div>
                        <div class="grid grid-cols-3 gap-1">
                          <div class="h-8 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              fill="currentColor"
                              class="size-3"
                            >
                              <path
                                fill-rule="evenodd"
                                d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                                clip-rule="evenodd"
                              />
                            </svg>
                          </div>
                          <div class="h-8 w-full col-span-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              fill="currentColor"
                              class="size-4"
                            >
                              <path
                                fill-rule="evenodd"
                                d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                                clip-rule="evenodd"
                              />
                            </svg>
                          </div>
                        </div>
                        <div class="h-5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            fill="currentColor"
                            class="size-4"
                          >
                            <path
                              fill-rule="evenodd"
                              d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                              clip-rule="evenodd"
                            />
                          </svg>
                        </div>
                        <div class="grid grid-cols-3 gap-1">
                          <div class="h-9 w-full col-span-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              fill="currentColor"
                              class="size-4"
                            >
                              <path
                                fill-rule="evenodd"
                                d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                                clip-rule="evenodd"
                              />
                            </svg>
                          </div>
                          <div class="h-9 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              fill="currentColor"
                              class="size-3"
                            >
                              <path
                                fill-rule="evenodd"
                                d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                                clip-rule="evenodd"
                              />
                            </svg>
                          </div>
                        </div>
                      </div>
                      <div class="space-y-1">
                        <div class="h-6 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            fill="currentColor"
                            class="size-4"
                          >
                            <path
                              fill-rule="evenodd"
                              d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                              clip-rule="evenodd"
                            />
                          </svg>
                        </div>
                        <div class="h-5 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            fill="currentColor"
                            class="size-4"
                          >
                            <path
                              fill-rule="evenodd"
                              d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                              clip-rule="evenodd"
                            />
                          </svg>
                        </div>
                        <div class="grid grid-cols-3 gap-1">
                          <div class="h-8 w-full col-span-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              fill="currentColor"
                              class="size-4"
                            >
                              <path
                                fill-rule="evenodd"
                                d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                                clip-rule="evenodd"
                              />
                            </svg>
                          </div>
                          <div class="h-8 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              fill="currentColor"
                              class="size-3"
                            >
                              <path
                                fill-rule="evenodd"
                                d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                                clip-rule="evenodd"
                              />
                            </svg>
                          </div>
                        </div>
                        <div class="grid grid-cols-3 gap-1">
                          <div class="h-9 w-full col-span-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              fill="currentColor"
                              class="size-4"
                            >
                              <path
                                fill-rule="evenodd"
                                d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                                clip-rule="evenodd"
                              />
                            </svg>
                          </div>
                          <div class="h-9 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                            <svg
                              xmlns="http://www.w3.org/2000/svg"
                              viewBox="0 0 24 24"
                              fill="currentColor"
                              class="size-3"
                            >
                              <path
                                fill-rule="evenodd"
                                d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                                clip-rule="evenodd"
                              />
                            </svg>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Gallery
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-1 h-full w-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="py-3">
                      <div class="flex items-center justify-between mb-2">
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                      </div>
                      <div class="flex w-fit mx-auto mb-2">
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-s-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 border-s border-[#747477] flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 border-s border-[#747477] flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 border-s border-[#747477] flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-e-sm border-s border-[#747477] flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-2 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                      </div>
                      <div class="flex items-center justify-between gap-3 mb-2">
                        <div class="h-3 w-10 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-4 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-3 w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-4 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                        <div class="h-2 bg-[#b5b5bd] dark:bg-[#606064] px-2 rounded-sm flex items-center justify-center">
                          <div class="bg-[#74747a] darak:bg-[#48484D] w-3 h-[0.185rem] rounded-full">
                          </div>
                        </div>
                      </div>
                      <div class="w-full h-2 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center">
                        <div class="bg-[#74747a] darak:bg-[#48484D] w-8 h-[0.185rem] rounded-full">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Buttons
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="py-3 px-1 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="w-full bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex gap-1 p-1">
                      <div class="size-4 bg-[#74747a] darak:bg-[#48484D] rounded-full shrink-0"></div>
                      <div class="space-y-1 flex-1">
                        <div class="h-1 w-10 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                        <div class="h-2 w-16 bg-[#74747a] darak:bg-[#48484D] rounded-sm"></div>
                      </div>
                      <div class="h-2 w-8 bg-[#74747a] darak:bg-[#48484D] rounded-full flex justify-center items-center">
                        <div class="bg-[#606064] rounded-full w-3 h-[0.18rem]"></div>
                      </div>
                    </div>
                    <div class="flex gap-1 justify-between mt-4">
                      <div class="h-3 w-9 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex justify-center items-center relative">
                        <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full w-3 h-[0.18rem]">
                        </div>
                        <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full absolute -top-1 -right-1 size-2.5 text-[0.4rem] flex items-center justify-center">
                          3
                        </div>
                      </div>
                      <div class="h-3 w-9 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex justify-center items-center relative">
                        <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full w-3 h-[0.18rem]">
                        </div>
                        <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full absolute -top-1 -left-1 size-2.5 text-[0.4rem] flex items-center justify-center">
                          3
                        </div>
                      </div>
                      <div class="h-3 w-9 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex justify-center items-center gap-1">
                        <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full w-3 h-[0.18rem]">
                        </div>
                        <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full size-2 text-[0.38rem] flex items-center justify-center">
                          9
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Badge
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="py-3 px-1 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="grid grid-cols-2 gap-2">
                      <div>
                        <div class="w-14 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center gap-1 p-1">
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-[2px] w-5 rounded-sm"></div>
                        </div>
                        <div class="w-14 h-12 bg-[#b5b5bd] dark:bg-[#606064] mt-0.5 rounded-sm space-y-1 p-1">
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                        </div>
                      </div>

                      <div class="flex gap-1">
                        <div class="w-14 h-12 bg-[#b5b5bd] dark:bg-[#606064] mt-0.5 rounded-sm space-y-1 p-1">
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                          <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-5/6 mx-auto"></div>
                        </div>
                        <div class="size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-sm flex items-center justify-center shrink-0">
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 24 24"
                            fill="currentColor"
                            class="size-[0.6rem]"
                          >
                            <path d="M5.85 3.5a.75.75 0 0 0-1.117-1 9.719 9.719 0 0 0-2.348 4.876.75.75 0 0 0 1.479.248A8.219 8.219 0 0 1 5.85 3.5ZM19.267 2.5a.75.75 0 1 0-1.118 1 8.22 8.22 0 0 1 1.987 4.124.75.75 0 0 0 1.48-.248A9.72 9.72 0 0 0 19.266 2.5Z" />
                            <path
                              fill-rule="evenodd"
                              d="M12 2.25A6.75 6.75 0 0 0 5.25 9v.75a8.217 8.217 0 0 1-2.119 5.52.75.75 0 0 0 .298 1.206c1.544.57 3.16.99 4.831 1.243a3.75 3.75 0 1 0 7.48 0 24.583 24.583 0 0 0 4.83-1.244.75.75 0 0 0 .298-1.205 8.217 8.217 0 0 1-2.118-5.52V9A6.75 6.75 0 0 0 12 2.25ZM9.75 18c0-.034 0-.067.002-.1a25.05 25.05 0 0 0 4.496 0l.002.1a2.25 2.25 0 1 1-4.5 0Z"
                              clip-rule="evenodd"
                            />
                          </svg>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Dropdown
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="py-3 px-1 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] h-14 p-2">
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-2 w-5/6 mx-auto"></div>
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-[3px] w-full mt-1 mx-auto"></div>
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-[3px] w-full mt-1 mx-auto"></div>
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-2 w-10 mt-2 mx-auto"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Jumbotron
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="py-3 px-1 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="flex items-center gap-1">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                      <div class="text-[8px]">/</div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                      <div class="text-[8px]">/</div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                    </div>
                    <div class="flex items-center gap-1 mt-2">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                    </div>
                    <div class="flex items-center gap-1 mt-2">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="size-2.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="m8.25 4.5 7.5 7.5-7.5 7.5"
                        />
                      </svg>

                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="size-2.5"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="m8.25 4.5 7.5 7.5-7.5 7.5"
                        />
                      </svg>

                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-full w-4 h-1"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Breadcrumb
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="py-3 px-1 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="flex gap-1">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-3.5 flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M15.75 19.5 8.25 12l7.5-7.5"
                          />
                        </svg>
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-3.5"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-3.5"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-3.5"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-3.5"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-3.5"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-3.5"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-3.5 flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m8.25 4.5 7.5 7.5-7.5 7.5"
                          />
                        </svg>
                      </div>
                    </div>
                    <div class="flex gap-1 mt-3">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-4 flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m18.75 4.5-7.5 7.5 7.5 7.5m-6-15L5.25 12l7.5 7.5"
                          />
                        </svg>
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-4 flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M15.75 19.5 8.25 12l7.5-7.5"
                          />
                        </svg>
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-4"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-4"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-4"></div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-4 flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m8.25 4.5 7.5 7.5-7.5 7.5"
                          />
                        </svg>
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm size-4 flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m5.25 4.5 7.5 7.5-7.5 7.5m6-15 7.5 7.5-7.5 7.5"
                          />
                        </svg>
                      </div>
                    </div>
                    <div class="flex mt-3">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-s-sm size-4 border-e border-[#48484D] flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M15.75 19.5 8.25 12l7.5-7.5"
                          />
                        </svg>
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] border-e border-[#48484D] size-4">
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] border-e border-[#48484D] size-4">
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] border-e border-[#48484D] size-4">
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] border-e border-[#48484D] size-4">
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] border-e border-[#48484D] size-4">
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] border-e border-[#48484D] size-4">
                      </div>
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-e-sm size-4 flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-2"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="m8.25 4.5 7.5 7.5-7.5 7.5"
                          />
                        </svg>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Pagination
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="pt-10 px-1 h-full bg-[#e5e7e8] dark:bg-[#323038] flex justify-center">
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm h-4 w-20 relative">
                      <div class="absolute -top-3 left-1/2 -translate-x-1/2 w-7 h-2 rounded-sm bg-[#7c7c80] dark:bg-[#54545b] after:block after:size-[3px] after:absolute after:bg-[#7c7c80] dark:after:bg-[#54545b] after:rotate-45 after:-bottom-[2px] after:left-1/2 after:-translate-x-1/2">
                      </div>
                      <div class="absolute -bottom-3 left-1/2 -translate-x-1/2 w-7 h-2 rounded-sm bg-[#7c7c80] dark:bg-[#54545b] after:block after:size-[3px] after:absolute after:bg-[#7c7c80] dark:after:bg-[#54545b] after:rotate-45 after:-top-[2px] after:left-1/2 after:-translate-x-1/2">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Tooltip
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="pt-6 px-1 h-full bg-[#e5e7e8] dark:bg-[#323038] flex justify-center">
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm h-4 w-8 relative">
                      <div class="absolute -bottom-[40px] left-1/2 -translate-x-1/2 w-14 h-9 rounded-sm p-1 space-y-1 bg-[#7c7c80] dark:bg-[#54545b] after:block after:size-[3px] after:absolute after:bg-[#7c7c80] dark:after:bg-[#54545b] after:rotate-45 after:-top-[2px] after:left-1/2 after:-translate-x-1/2">
                        <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm h-1 w-full relative">
                        </div>
                        <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm h-1 w-full relative">
                        </div>
                        <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm h-1 w-full relative">
                        </div>
                        <div class="bg-[#b5b5bd] dark:bg-[#606064] rounded-sm h-1 w-full relative">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Popover
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="pt-3 px-1 h-full bg-[#e5e7e8] dark:bg-[#323038] space-y-2">
                    <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full h-1 w-full relative overflow-hidden">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] absolute start-0 w-1/6 inset-y-0">
                      </div>
                    </div>
                    <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full h-1 w-full relative overflow-hidden">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] absolute start-0 w-1/2 inset-y-0">
                      </div>
                    </div>
                    <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full h-1 w-full relative overflow-hidden">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] absolute start-0 w-2/3 inset-y-0">
                      </div>
                    </div>
                    <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full h-1 w-full relative overflow-hidden">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] absolute start-0 w-5/6 inset-y-0">
                      </div>
                    </div>
                    <div class="bg-[#74747a] darak:bg-[#48484D] rounded-full h-1 w-full relative overflow-hidden">
                      <div class="bg-[#b5b5bd] dark:bg-[#606064] absolute start-0 w-full inset-y-0">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Progress
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="px-1 pt-5 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="flex justify-center gap-2 flex-wrap">
                      <svg
                        aria-hidden="true"
                        class="inline size-6 text-[#74747a] animate-spin dark:text-gray-600 fill-blue-600"
                        viewBox="0 0 100 101"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
                          fill="currentColor"
                        />
                        <path
                          d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
                          fill="currentFill"
                        />
                      </svg>
                      <svg
                        aria-hidden="true"
                        class="inline size-6 text-[#74747a] animate-spin dark:text-gray-600 fill-rose-600"
                        viewBox="0 0 100 101"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
                          fill="currentColor"
                        />
                        <path
                          d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
                          fill="currentFill"
                        />
                      </svg>
                      <svg
                        aria-hidden="true"
                        class="inline size-6 text-[#74747a] animate-spin dark:text-gray-600 fill-emerald-600"
                        viewBox="0 0 100 101"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
                          fill="currentColor"
                        />
                        <path
                          d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
                          fill="currentFill"
                        />
                      </svg>
                      <svg
                        aria-hidden="true"
                        class="inline size-6 text-[#74747a] animate-spin dark:text-gray-600 fill-amber-600"
                        viewBox="0 0 100 101"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
                          fill="currentColor"
                        />
                        <path
                          d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
                          fill="currentFill"
                        />
                      </svg>
                      <svg
                        aria-hidden="true"
                        class="inline size-6 text-[#74747a] animate-spin dark:text-gray-600 fill-slate-400"
                        viewBox="0 0 100 101"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
                          fill="currentColor"
                        />
                        <path
                          d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
                          fill="currentFill"
                        />
                      </svg>
                      <svg
                        aria-hidden="true"
                        class="inline size-6 text-[#74747a] animate-spin dark:text-gray-600 fill-purple-600"
                        viewBox="0 0 100 101"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
                          fill="currentColor"
                        />
                        <path
                          d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
                          fill="currentFill"
                        />
                      </svg>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Spinner
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="h-full bg-[#e5e7e8] dark:bg-[#323038] relative">
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] border-b border-[#48484D] px-1 absolute top-0 h-3 inset-x-0 flex justify-between items-center">
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-1 w-1/2 rounded-full"></div>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="size-2"
                      >
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18 18 6M6 6l12 12" />
                      </svg>
                    </div>
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] border-b border-[#48484D] px-1 absolute bottom-[4px] h-4 inset-x-0 flex justify-between items-center">
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-1 w-3/4 rounded-full"></div>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="size-2"
                      >
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18 18 6M6 6l12 12" />
                      </svg>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Banner
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 h-full bg-[#e5e7e8] dark:bg-[#323038] relative space-y-1">
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] border-b border-[#48484D] p-1 h-7 flex items-center gap-1">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="none"
                        stroke="currentColor"
                        stroke-width="2"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        class="size-4"
                      >
                        <path d="M16 3a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2 1 1 0 0 1 1 1v1a2 2 0 0 1-2 2 1 1 0 0 0-1 1v2a1 1 0 0 0 1 1 6 6 0 0 0 6-6V5a2 2 0 0 0-2-2z" />
                        <path d="M5 3a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2 1 1 0 0 1 1 1v1a2 2 0 0 1-2 2 1 1 0 0 0-1 1v2a1 1 0 0 0 1 1 6 6 0 0 0 6-6V5a2 2 0 0 0-2-2z" />
                      </svg>
                      <div class="space-y-1 flex-1">
                        <div class="bg-[#74747a] darak:bg-[#48484D] h-[3px] w-1/2 rounded-full"></div>
                        <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-2/3 rounded-full"></div>
                        <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-3/4 rounded-full"></div>
                      </div>
                    </div>
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] border-b border-[#48484D] p-1 h-7 flex items-center gap-1">
                      <div class="space-y-1 flex-1">
                        <div class="bg-[#74747a] darak:bg-[#48484D] h-[3px] w-1/2 rounded-full"></div>
                        <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-2/3 rounded-full"></div>
                        <div class="bg-[#74747a] darak:bg-[#48484D] h-0.5 w-full rounded-full"></div>
                      </div>
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="none"
                        stroke="currentColor"
                        stroke-width="2"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        class="size-4"
                      >
                        <path d="M16 3a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2 1 1 0 0 1 1 1v1a2 2 0 0 1-2 2 1 1 0 0 0-1 1v2a1 1 0 0 0 1 1 6 6 0 0 0 6-6V5a2 2 0 0 0-2-2z" />
                        <path d="M5 3a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2 1 1 0 0 1 1 1v1a2 2 0 0 1-2 2 1 1 0 0 0-1 1v2a1 1 0 0 0 1 1 6 6 0 0 0 6-6V5a2 2 0 0 0-2-2z" />
                      </svg>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Blockquote
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] border-b border-[#48484D] p-1 h-16 rounded-sm flex flex-col justify-center gap-2">
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-[1px] w-full rounded-full relative">
                        <div class="absolute left-1/2 -translate-x-1/2 -top-px bg-[#b5b5bd] dark:bg-[#606064] h-1 w-4 flex items-center justify-center">
                          <div class="h-0.5 w-2 rounded-full bg-[#74747a] darak:bg-[#48484D]"></div>
                        </div>
                      </div>
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-[1px] w-full rounded-full relative mt-2">
                        <div class="absolute left-1/2 -translate-x-1/2 -top-px bg-[#b5b5bd] dark:bg-[#606064] h-1 w-5 flex items-center justify-center">
                          <div class="size-1 rounded-full bg-[#74747a] darak:bg-[#48484D]"></div>
                        </div>
                      </div>
                      <div class="bg-[#74747a] darak:bg-[#48484D] h-[1px] w-full rounded-full relative mt-2">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Divider
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="rounded-sm h-3 bg-[#b5b5bd] dark:bg-[#606064] flex justify-between px-2 items-center">
                      <div class="size-2 rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="flex gap-1">
                        <div class="h-[3px] w-2 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-2.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-1.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-3 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                    </div>
                    <div class="bg-[#b5b5bd] dark:bg-[#606064] border-b border-[#48484D] p-1 h-16 mt-1 rounded-sm grid grid-cols-3 gap-1">
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-[3px] w-full rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Mega Menu
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 h-full bg-[#e5e7e8] dark:bg-[#323038] flex flex-col justify-end gap-2">
                    <div class="rounded-sm h-3 bg-[#b5b5bd] dark:bg-[#606064] flex justify-between px-2 items-center">
                      <div class="h-2 w-4 rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="flex gap-1">
                        <div class="h-[3px] w-2 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-2.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-1.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-3 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                    </div>
                    <div class="rounded-sm h-3 bg-[#b5b5bd] dark:bg-[#606064] flex justify-between px-2 items-center">
                      <div class="flex gap-1">
                        <div class="h-[3px] w-2 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-2.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-1.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-3 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                      <div class="h-2 w-4 rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                    </div>

                    <div class="rounded-sm bg-[#b5b5bd] dark:bg-[#606064] grid grid-cols-3 gap-2 p-1">
                      <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Footer
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="flex justify-center py-2 items-center flex-wrap gap-3">
                      <div class="size-6 rounded-sm bg-[#b5b5bd] dark:bg-[#606064] flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-4"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M2.243 4.493v7.5m0 0v7.502m0-7.501h10.5m0-7.5v7.5m0 0v7.501m4.501-8.627 2.25-1.5v10.126m0 0h-2.25m2.25 0h2.25"
                          />
                        </svg>
                      </div>
                      <div class="size-6 rounded-sm bg-[#b5b5bd] dark:bg-[#606064] flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-4"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M21.75 19.5H16.5v-1.609a2.25 2.25 0 0 1 1.244-2.012l2.89-1.445c.651-.326 1.116-.955 1.116-1.683 0-.498-.04-.987-.118-1.463-.135-.825-.835-1.422-1.668-1.489a15.202 15.202 0 0 0-3.464.12M2.243 4.492v7.5m0 0v7.502m0-7.501h10.5m0-7.5v7.5m0 0v7.501"
                          />
                        </svg>
                      </div>
                      <div class="size-6 rounded-sm bg-[#b5b5bd] dark:bg-[#606064] flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-4"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M21.75 19.5H16.5v-1.609a2.25 2.25 0 0 1 1.244-2.012l2.89-1.445c.651-.326 1.116-.955 1.116-1.683 0-.498-.04-.987-.118-1.463-.135-.825-.835-1.422-1.668-1.489a15.202 15.202 0 0 0-3.464.12M2.243 4.492v7.5m0 0v7.502m0-7.501h10.5m0-7.5v7.5m0 0v7.501"
                          />
                        </svg>
                      </div>
                      <div class="size-6 rounded-sm bg-[#b5b5bd] dark:bg-[#606064] flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-4"
                        >
                          <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M5.248 20.246H9.05m0 0h3.696m-3.696 0 5.893-16.502m0 0h-3.697m3.697 0h3.803"
                          />
                        </svg>
                      </div>
                      <div class="size-6 rounded-sm bg-[#b5b5bd] dark:bg-[#606064] flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          fill="none"
                          viewBox="0 0 24 24"
                          stroke-width="1.5"
                          stroke="currentColor"
                          class="size-4"
                        >
                          <path
                            stroke-linejoin="round"
                            d="M6.75 3.744h-.753v8.25h7.125a4.125 4.125 0 0 0 0-8.25H6.75Zm0 0v.38m0 16.122h6.747a4.5 4.5 0 0 0 0-9.001h-7.5v9h.753Zm0 0v-.37m0-15.751h6a3.75 3.75 0 1 1 0 7.5h-6m0-7.5v7.5m0 0v8.25m0-8.25h6.375a4.125 4.125 0 0 1 0 8.25H6.75m.747-15.38h4.875a3.375 3.375 0 0 1 0 6.75H7.497v-6.75Zm0 7.5h5.25a3.75 3.75 0 0 1 0 7.5h-5.25v-7.5Z"
                          />
                        </svg>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Typography
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 h-full bg-[#e5e7e8] dark:bg-[#323038]">
                    <div class="grid grid-cols-2 gap-2">
                      <div class="rounded-sm p-1 bg-[#b5b5bd] dark:bg-[#606064] space-y-1">
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                      <div class="rounded-sm p-1 bg-[#b5b5bd] dark:bg-[#606064] space-y-1">
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                      <div class="rounded-sm p-1 bg-[#b5b5bd] dark:bg-[#606064] space-y-1">
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                      <div class="rounded-sm p-1 bg-[#b5b5bd] dark:bg-[#606064] space-y-1">
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-1 w-full rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              List
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 bg-[#e5e7e8] dark:bg-[#323038] space-y-1 h-full relative">
                    <div class="rounded-sm h-10 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                    <div class="grid grid-cols-2 gap-2">
                      <div class="rounded-sm h-10 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                      <div class="rounded-sm h-10 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                    </div>
                    <div class="rounded-sm h-10 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                  </div>
                  <div class="absolute inset-0 bg-black/25 text-xs backdrop-blur-[1px] flex justify-center items-center">
                    Loading...
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Overlay
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 bg-[#e5e7e8] dark:bg-[#323038] h-full relative">
                    <div class="grid grid-cols-2 gap-4">
                      <div class="rounded-sm h-5 bg-[#b5b5bd] dark:bg-[#606064] relative p-1">
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] h-2 w-5 absolute -right-2.5 -top-1">
                        </div>
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] h-1 w-5"></div>
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] h-1 w-full mt-1">
                        </div>
                      </div>
                      <div class="rounded-sm h-5 bg-[#b5b5bd] dark:bg-[#606064] relative p-1">
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] size-1 absolute -right-[1px] -top-[1px] animate-ping">
                        </div>
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] h-1 w-5 mx-auto mt-1">
                        </div>
                      </div>
                      <div class="rounded-sm h-3 bg-[#b5b5bd] dark:bg-[#606064] relative p-1 flex justify-center items-center gap-1">
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] size-1"></div>
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] h-1 w-full"></div>
                      </div>
                      <div class="rounded-sm h-5 bg-[#b5b5bd] dark:bg-[#606064] relative p-1">
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] h-2 w-5 absolute -left-2.5 -bottom-1">
                        </div>
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] h-1 w-4 mx-auto">
                        </div>
                        <div class="rounded-full bg-[#74747a] dark:bg-[#48484d] h-1 w-1/2 mx-auto mt-1">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Indicator
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 bg-[#e5e7e8] dark:bg-[#323038] h-full relative">
                    <div class="rounded-sm bg-[#b5b5bd] dark:bg-[#606064] flex justify-center items-center h-20">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        class="size-10"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M1.5 6a2.25 2.25 0 0 1 2.25-2.25h16.5A2.25 2.25 0 0 1 22.5 6v12a2.25 2.25 0 0 1-2.25 2.25H3.75A2.25 2.25 0 0 1 1.5 18V6ZM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0 0 21 18v-1.94l-2.69-2.689a1.5 1.5 0 0 0-2.12 0l-.88.879.97.97a.75.75 0 1 1-1.06 1.06l-5.16-5.159a1.5 1.5 0 0 0-2.12 0L3 16.061Zm10.125-7.81a1.125 1.125 0 1 1 2.25 0 1.125 1.125 0 0 1-2.25 0Z"
                          clip-rule="evenodd"
                        />
                      </svg>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Image
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 bg-[#e5e7e8] dark:bg-[#323038] h-full relative">
                    <div class="rounded-sm bg-[#b5b5bd] dark:bg-[#606064] flex gap-3 justify-center items-center h-20">
                      <kbd class="px-2 py-1 text-xs bg-[#74747a] dark:bg-[#48484d] rounded">CTRL</kbd>
                      <span class="text-xs">+</span>
                      <kbd class="px-2 py-1 text-xs bg-[#74747a] dark:bg-[#48484d] rounded">C</kbd>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Keyboard
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 bg-[#e5e7e8] dark:bg-[#323038] h-full relative">
                    <div class="absolute top-1 left-1 gap-1 flex flex-col justify-center items-center">
                      <div class="rounded-full size-4 bg-[#b5b5bd] dark:bg-[#606064] flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 24 24"
                          fill="currentColor"
                          class="size-2.5"
                        >
                          <path
                            fill-rule="evenodd"
                            d="M5.47 5.47a.75.75 0 0 1 1.06 0L12 10.94l5.47-5.47a.75.75 0 1 1 1.06 1.06L13.06 12l5.47 5.47a.75.75 0 1 1-1.06 1.06L12 13.06l-5.47 5.47a.75.75 0 0 1-1.06-1.06L10.94 12 5.47 6.53a.75.75 0 0 1 0-1.06Z"
                            clip-rule="evenodd"
                          />
                        </svg>
                      </div>
                      <div class="rounded-full size-3 bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="rounded-full size-3 bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="rounded-full size-3 bg-[#74747a] dark:bg-[#48484d]"></div>
                    </div>

                    <div class="absolute bottom-3 right-1 gap-1 flex flex-col justify-center items-center">
                      <div class="rounded-full size-3 bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="rounded-full size-3 bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="rounded-full size-3 bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="rounded-full size-4 bg-[#b5b5bd] dark:bg-[#606064] flex justify-center items-center">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 24 24"
                          fill="currentColor"
                          class="size-2.5"
                        >
                          <path
                            fill-rule="evenodd"
                            d="M5.47 5.47a.75.75 0 0 1 1.06 0L12 10.94l5.47-5.47a.75.75 0 1 1 1.06 1.06L13.06 12l5.47 5.47a.75.75 0 1 1-1.06 1.06L12 13.06l-5.47 5.47a.75.75 0 0 1-1.06-1.06L10.94 12 5.47 6.53a.75.75 0 0 1 0-1.06Z"
                            clip-rule="evenodd"
                          />
                        </svg>
                      </div>
                    </div>
                    <div class="absolute bottom-3 left-1 size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="size-2"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M12 4.5v15m7.5-7.5h-15"
                        />
                      </svg>
                    </div>

                    <div class="absolute top-1 right-1 size-4 bg-[#b5b5bd] dark:bg-[#606064] rounded-full flex justify-center items-center">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke-width="1.5"
                        stroke="currentColor"
                        class="size-2"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          d="M12 4.5v15m7.5-7.5h-15"
                        />
                      </svg>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Speed Dial
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 bg-[#e5e7e8] dark:bg-[#323038] h-full relative">
                    <div class="grid grid-cols-2 gap-2">
                      <div class="w-fit">
                        <div class="rounded-t-sm mx-auto h-2 w-4 bg-[#74747a] dark:bg-[#48484d]">
                        </div>
                        <div class="rounded-sm size-8 bg-[#b5b5bd] dark:bg-[#606064]"></div>
                        <div class="rounded-b-sm mx-auto h-2 w-4 bg-[#74747a] dark:bg-[#48484d]">
                        </div>
                      </div>

                      <div class="w-10 mx-auto">
                        <div class="rounded-sm w-full h-16 bg-[#b5b5bd] dark:bg-[#606064] overflow-hidden flex flex-col justify-between">
                          <div class="h-1 w-full bg-[#74747a] dark:bg-[#48484d]"></div>
                          <div class="h-2 w-full bg-[#74747a] dark:bg-[#48484d] flex justify-center items-center">
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] size-1.5 rounded-full"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Device Mockup
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="p-2 bg-[#e5e7e8] dark:bg-[#323038] h-full relative">
                    <div class="rounded-sm h-3 bg-[#b5b5bd] dark:bg-[#606064] flex justify-between px-2 items-center">
                      <div class="size-2 rounded-full bg-[#74747a] dark:bg-[#48484d]"></div>
                      <div class="flex gap-1">
                        <div class="h-[3px] w-2 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-2.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-1.5 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                        <div class="h-[3px] w-3 rounded-xs bg-[#74747a] dark:bg-[#48484d]"></div>
                      </div>
                    </div>
                    <div class="rounded-sm size-full mt-1 bg-[#b5b5bd] dark:bg-[#606064] overflow-hidden">
                      <div class="grid grid-cols-4 gap-2 h-full">
                        <div class="col-span-3 pace-y-1 py-1 px-2 space-y-1">
                          <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-2"></div>
                          <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-3"></div>
                          <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-4"></div>
                          <div class="grid grid-cols-3 gap-2">
                            <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-3"></div>
                            <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-3"></div>
                            <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-3"></div>
                          </div>
                        </div>
                        <div class="col-span-1">
                          <div class="mx-auto h-full w-full bg-[#74747a] dark:bg-[#48484d] space-y-1 p-1">
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#222222] dark:bg-[#606064] h-0.5 w-full"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Table of Content
            </div>
          </.link>
          <.link
            navigate={~p"/"}
            class="overflow-hidden relative border border-[#e8e8e8] dark:border-[#525151] rounded-lg pt-5 group"
          >
            <div class="relative w-fit mx-auto">
              <div class="w-40 h-36 bg-[#f1f1f1] dark:bg-[#202020] rounded-t-lg opacity-80 transition-all duration-400 group-hover:opacity-100">
                <div class="border-b border-[#444441] py-1 px-2 flex gap-1 items-center">
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                  <div class="size-1 bg-[#444441] rounded-full"></div>
                </div>
                <div class="p-2 h-full">
                  <div class="bg-[#e5e7e8] dark:bg-[#323038] h-full">
                    <div class="rounded-sm size-full mt-1 bg-[#b5b5bd] dark:bg-[#606064] overflow-hidden">
                      <div class="grid grid-cols-4 h-full">
                        <div class="col-span-1">
                          <div class="mx-auto h-full w-full bg-[#74747a] dark:bg-[#48484d] space-y-1 p-1">
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                            <div class="bg-[#b5b5bd] dark:bg-[#606064] h-0.5 w-full"></div>
                          </div>
                        </div>
                        <div class="col-span-3">
                          <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-3 border-s border-b border-[#999999] dark:border-[#646466]">
                          </div>
                          <div class="space-y-1 p-2">
                            <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-4"></div>
                            <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-5"></div>
                            <div class="grid grid-cols-2 gap-2">
                              <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-5"></div>

                              <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-5"></div>
                            </div>
                            <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-5"></div>

                            <div class="bg-[#74747a] dark:bg-[#48484d] w-full h-5"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="absolute inset-x-0 bottom-0 backdrop-blur-[1px] transition-all duration-200 h-9 group-hover:h-11 px-2 bg-black/10 text-[#767676] dark:text-white flex items-center gap-2">
              Sidebar
            </div>
          </.link>
        </div>
      </div>
    </section>
    <section class="text-[#202020] dark:text-[#f6f6f6]">
      <div class="max-w-6xl mx-auto py-16 px-5 lg:px-2 space-y-5">
        <h6 class="text-center text-2xl lg:text-4xl font-bold">
          Our Community
        </h6>

        <p class="text-center text-[#9B9BA4] font-medium">
          Follow us on the following networks
        </p>

        <div class="grid md:grid-cols-4 gap-5">
          <.link
            href="https://github.com/mishka-group"
            class="block transition-all duration-600 delay-100 rounded-xl border dark:border-[#4C4C4C] dark:bg-[#252424] dark:hover:bg-[#252424]/65 hover:bg-[#f1f1f1] px-3 py-5 space-y-3"
            target="_blank"
          >
            <div class="text-[23px]">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="size-5 me-2 -mt-0.5 inline-block"
              >
                <path d="M15 22v-4a4.8 4.8 0 0 0-1-3.5c3 0 6-2 6-5.5.08-1.25-.27-2.48-1-3.5.28-1.15.28-2.35 0-3.5 0 0-1 0-3 1.5-2.64-.5-5.36-.5-8 0C6 2 5 2 5 2c-.3 1.15-.3 2.35 0 3.5A5.403 5.403 0 0 0 4 9c0 3.5 3 5.5 6 5.5-.39.49-.68 1.05-.85 1.65-.17.6-.22 1.23-.15 1.85v4" />
                <path d="M9 18c-4.51 2-5-2-7-2" />
              </svg>
              Github
            </div>

            <p class="text-sm text-[#959b9d] dark:text-[#cacfd2]">
              Our open-source code and product support can be found on our GitHub repository
            </p>
          </.link>

          <.link
            href="https://x.com/shahryar_tbiz"
            class="block transition-all duration-600 delay-100 rounded-xl border dark:border-[#4C4C4C] dark:bg-[#252424] dark:hover:bg-[#252424]/65 hover:bg-[#f1f1f1] px-3 py-5 space-y-3"
            target="_blank"
            title="Mishka X&Twitter"
          >
            <div class="text-[23px]">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="size-5 me-2 -mt-0.5 inline-block"
              >
                <path d="M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z" />
              </svg>
              Twitter
            </div>

            <p class="text-sm text-[#959b9d] dark:text-[#cacfd2]">
              Stay updated with our latest product news and service updates on Twitter
            </p>
          </.link>

          <.link
            href="https://www.youtube.com/@mishka-group"
            class="block transition-all duration-600 delay-100 rounded-xl border dark:border-[#4C4C4C] dark:bg-[#252424] dark:hover:bg-[#252424]/65 hover:bg-[#f1f1f1] px-3 py-5 space-y-3"
            target="_blank"
            title="Mishka Youtube"
          >
            <div class="text-[23px]">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="size-5 me-2 -mt-0.5 inline-block"
              >
                <path d="M2.5 17a24.12 24.12 0 0 1 0-10 2 2 0 0 1 1.4-1.4 49.56 49.56 0 0 1 16.2 0A2 2 0 0 1 21.5 7a24.12 24.12 0 0 1 0 10 2 2 0 0 1-1.4 1.4 49.55 49.55 0 0 1-16.2 0A2 2 0 0 1 2.5 17" />
                <path d="m10 15 5-3-5-3z" />
              </svg>
              Youtube
            </div>

            <p class="text-sm text-[#959b9d] dark:text-[#cacfd2]">
              Watch programming tutorials and Mishka product demos on our YouTube channel
            </p>
          </.link>

          <.link
            href="https://www.linkedin.com/company/mishka-group/"
            class="block transition-all duration-600 delay-100 rounded-xl border dark:border-[#4C4C4C] dark:bg-[#252424] dark:hover:bg-[#252424]/65 hover:bg-[#f1f1f1] px-3 py-5 space-y-3"
            target="_blank"
            title="Mishka Linkedin"
          >
            <div class="text-[23px]">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="size-5 me-2 -mt-0.5 inline-block"
              >
                <path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z" />
                <rect width="4" height="12" x="2" y="9" /> <circle cx="4" cy="4" r="2" />
              </svg>
              Linkedin
            </div>

            <p class="text-sm text-[#959b9d] dark:text-[#cacfd2]">
              Connect with us on LinkedIn for company insights, career opportunities, and industry updates
            </p>
          </.link>
        </div>
      </div>
    </section>
    <footer class="footer-custom-component dark:text-[#f6f6f6] text-[13px] text-center">
      <div class="max-w-5xl mx-auto px-5 py-4 space-y-2 border-t border-[#505050]">
        <p>© 2024 Mishka. All rights reserved.</p>

        <div class="text-[#535353] dark:text-[#cacfd2]">
          <span class="cursor-pointer group">
            <span>Based in Netherlands</span><svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 24 24"
              fill="currentColor"
              class="size-4 ms-1 -mt-0.5 inline-block group-hover:text-rose-600 transition-all duration-75"
            >
              <path d="m11.645 20.91-.007-.003-.022-.012a15.247 15.247 0 0 1-.383-.218 25.18 25.18 0 0 1-4.244-3.17C4.688 15.36 2.25 12.174 2.25 8.25 2.25 5.322 4.714 3 7.688 3A5.5 5.5 0 0 1 12 5.052 5.5 5.5 0 0 1 16.313 3c2.973 0 5.437 2.322 5.437 5.25 0 3.925-2.438 7.111-4.739 9.256a25.175 25.175 0 0 1-4.244 3.17 15.247 15.247 0 0 1-.383.219l-.022.012-.007.004-.003.001a.752.752 0 0 1-.704 0l-.003-.001Z" />
            </svg>
          </span>
        </div>
      </div>
    </footer>
    """
  end
end
