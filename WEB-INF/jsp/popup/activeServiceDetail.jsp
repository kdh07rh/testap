<%@ include file="/WEB-INF/jsp/layout/common/taglib.jsp" %>
<aries:compress>
<aries:layout template="empty_">
<div id="popupContentBody">
    <div id="vue-mount">
		<app
			 :sid="${sid}"
			 :txid="`${txid}`"
			 :stime="${stime}"
			 :etime="${etime}"
			 :platform="`${platform}`"
			 :profile-status="`${profileStatus}`"
			 :session="`${session}`"
			 :thread="`${thread}`"
			 :perm-thread-control="`${permThreadControl}`"
			 :active-profile-text-updated-raw="profileText"
			 :active-profile-terminated="activeProfileTerminated"
			 :thread-uncontrollable="threadUncontrollable"
			 @active-profile="activeProfile"
			 @close-service-terminated-popup="activeProfileTerminated = false"
			 @close-thread-uncontrollable-popup="threadUncontrollable = false"
			 @redirect="redirect"
			 @interrupt="interrupt"
			 @suspend="suspend"
			 @resume="resume"
			 @thread-kill="threadkill"
		>
		</app>
	</div>
</div>
</aries:layout>
</aries:compress>