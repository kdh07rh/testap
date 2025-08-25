<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
    <aries:layout template="base_">
        <div id="vue_app">
            <common-header
                    :subject="'<tags:message code="ui.label.setting" />'"
                    :hide-domain-group-box="true"
                    :hide-more-button="true"
                    :manual-link="createManualLink()"
            >
                <template #headers>
                    <btn normal class="border-none"
                         :pressed="isOpenMenus"
                         :tooltip-options="{ message: '<tags:message code="ui.label.menu" />' }"
                         :items="[{ iconType: iconTypes.menu }]"
                         @click="toggleIsOpenMenus"
                    ></btn>
                </template>
            </common-header>

            <div class="main-contents">
                <div class="left" v-if="isOpenMenus">
                    <template v-for="menu in menus">
                        <template v-if="menu.text">
                            <div :class="[ 'menu', (menu.isChild ? 'sub' : 'main'), (menu.active ? 'active' : '') ]"
                                 @click.prevent="onClickMenuItem(menu, false)"
                                 v-if="!menu.isChild || (menu.isChild && menu.isOpen)">
                                <a v-html="menu.text"></a>
                                <svg-icon :icon="iconTypes[menu.isOpen ? 'open' : 'fold']"
                                          :width="14"
                                          :height="14"
                                          @click.prevent="onClickToggleIcon(menu.index)"
                                          v-if="menu.hasChild"></svg-icon>
                            </div>
                        </template>
                    </template>
                </div>
                <div class="right" ref="scroll-container">
                    <router-view></router-view>
                </div>
            </div>

            <input type="hidden" id="csrf_token" value="${token}" />
        </div>
    </aries:layout>
</aries:compress>
