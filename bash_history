git rebase --abort
gb -l
go master
git pull origin master
go -b da-1458_stargate_client-1
git s
gc -am"Replace Bundle with StargateBundle, FileMetadata with StargateFile"
git push luveen da-1458_stargate_client-1
mci -o -e
ll
for d in report-libs-di report-libs-importer; do echo "Running tests for ${d}..."; echo; echo; pushd ${d}; mci -o -e; echo "Done running tests for ${d}."; popd; done
for d in report-libs-di; do echo "Running tests for ${d}..."; echo; echo; pushd ${d}; mci -o -e; echo "Done running tests for ${d}."; popd; done
for d in report-libs-di; do echo "Running tests for ${d}..."; echo; echo; pushd ${d}; mci -e; echo "Done running tests for ${d}."; popd; done
for d in report-libs-di; do echo "Running tests for ${d}..."; echo; echo; pushd ${d}; mvn clean test -e; echo "Done running tests for ${d}."; popd; done
for d in report-libs-importer; do echo "Running tests for ${d}..."; echo; echo; pushd ${d}; mvn clean test -e; echo "Done running tests for ${d}."; popd; done
echo "Running ExhaustiveTestStargateBundleRequester..."; echo; pushd report-libs-di; mvn clean test -Dtest=ExhaustiveTestStargateBundleRequester; echo "Finished running ExhaustiveTestStargateBundleRequester."; popd; echo;
git s
git l
git s
gc -am"Fix tests"
git push -f luveen da-1458_stargate_client-1
git l
git rebase master
git rebase -i master
git push -f luveen da-1458_stargate_client-1
mcis -o -e
go master
git s
gb -l
gb -D da-1458_and_da-1457
go da-1457_queue_bertha_job
git rebase master
git rebase --continue
git s
ga report-libs-di/src/main/resources/config/di-dataImport-stargate.xml
git rebase --continue
ga report-libs-di/src/main/resources/config/di-dataImport-stargate.xml
git rebase --continue
git rebase --abort
git rebase master
git rebase --continue
ga report-libs-di/src/main/resources/config/di-dataImport-stargate.xml
git rebase --continue
git rebase --abort
git rebase
git rebase master
ga report-libs-di/src/main/resources/config/di-dataImport-stargate.xml
git rebase --continue
ga report-libs-di/src/main/resources/config/di-dataImport-stargate.xml
git rebase --continue
git rebase --abort
go master
go -b da-1457_queue_bertha_job-1 -U da-1457_queue_bertha_job
go -b luveen/da-1457_queue_bertha_job-1
go master
gb -D "luveen/da-1457_queue_bertha_job-1"
go -b luveen da-1457_queue_bertha_job-1
git fetch luveen
gb -a
git fetch luveen/da-1457_queue_bertha_job-2
git fetch luveen da-1457_queue_bertha_job-2
go da-1457_queue_bertha_job-2
git rebase master
ga report-libs-di/src/main/resources/config/di-dataImport-stargate.xml
git rebase --continue
ga <?xml version="1.0" encoding="utf-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:p="http://www.springframework.org/schema/p" xmlns:util="http://www.springframework.org/schema/util"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans-3.1.xsd http://www.springframework.org/schema/util http://www.springframework.org/schema/util/spring-util.xsd">
    <description>
        Context included if a client wishes to have stargate with a rollback. The list of import configurations
        "stargateImportConfigurations" must be defined.
    </description>
    <bean id="multipleCronJobLock"
          class="java.util.concurrent.locks.ReentrantLock">
        <description>
            The lock to be used to allow multiple cron jobs to have the same import types but not run at the same time.
            This is used since we have a queue which checks the local file system            This is used since we have a queue which chec t            This is used since we have a queue which checkshe            This is used since we have a queue which checks the local file system            This is used sincesc            This is used since we have a queue which checks the local              This is used since we have a queue which checks the local file system            This is used since we have a queue which chec t            This is used since we have a queue which cchronizedImportJobDe            This is used since we have a queue which checks the local file system            This is used sinc              This is used since we have a queue which cchronizedJob">
                                        bD                                        bD                he same file lock and th                                        bD                                        bD                he same file lock entry key="lock" value-ref="multipleCronJobLock"/>
            </map>
        </property>
    </bean>

    <bean id="abstractSynchronizedImportTrigger"
          class="org.springframework.scheduling.quartz.CronTriggerBean"
          p:jobName="DataImport">
        <description>
            Triggers which should use the same synchronized job detail.
        </description>
    </bean>

    <import resource="classpath:config/di-dataImport-timelinessImportListener.xml"/>

    <bean id="abstractLoadUploadedFilesService"
          class="poseur.di.LoadUploadedFilesServiceImpl"
          abstract="true"
          p:importType="UTIL"
          p:deleteRemoteFiles="true"
          p:sequencePattern="${datafiles.import.sequencePattern}"
          p:importConfigurations-ref="stargateImportConfigurations"
          p:lockingEventListener-ref="${import.locking.event.listener}">
        <property name="importJobEventListeners">
            <list>
            </list>
        </property>
        <property name="cacheFileSystem">
            <bean class="opower.VFSFileSystemFactory"
                  p:uri="${datafiles.cache.location.client}"/>
        </property>
        <property name="permanentFileSystem">
            <bean class="opower.VFS            <bean class="opower      p:uri="${datafiles.            <bean class="opower.VFS            <bean class="opower   n id="abstractStargateLoad      edFilesService";           class="poseur.di.BundleAwareLoadUploadedFilesService";           par          par          par          par          abstract="true";           p:maxSecondsToSleep="0">;                                   The stargate file service w                                 ote                                   The stargate file service w  ort                                  The stargate file service w     im                                  The stargate file service w       </property>;         <property name="remoteFileSystem">;             <bean class="opower.VFSFileSystemFactory";                                             e.l                                            e.l   ; ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<loadedFilesService"
                                              loa                                              loa                                              loa                                              loa                                              loa                                                          loa            
          p:lockingEventListener="null"
          p:importJobEventListeners="nul          p:importJobEventListe              p:importJobEventListeners="nul          p:importJobEventListe              p:importJobEventListeners="nul          p:importJobEventListe              p:importJobEventListeners="nul          p:importJobEventListe              p:importJobEventListeners="nul          p:importJobEventListe              ul          p:importJobEventListeners="nuty name="berthaJobExecutionEndpoint" ref="berthaClient"/>
    </bean>

>>>>>>> Added queue Bertha import service trigger
    <bean id="scheduler" class="org.springframework.scheduling.quartz.SchedulerFactoryBean"
          p:schedulerName="scheduler"
          p:autoStartup="false">
        <description>
            A Quartz scheduler that other context files can add triggers and jobs to. This overrides the previously defined
            one to allow multiple triggers to reuse the same job detail. Otherwise, using opower.util.quartz.TriggerScheduler
                                      e it creates a new job each time, and there can't be two jobs with the same name in a
            group.

            This is turned off by default, because depending on report.ha.mode, it may not need to be turned on. The bean
            for SchedulerApplicationListener in index-default.xml will be responsible for turning it on.
        </description>
        <property name="jobDetails">
            <list>
                <ref bean="synchronizedImportJobDetail"/>
            </list          </property>
        <property name="triggers">
                                                                                                          p:name="legacyImportTrigger"
                                ession="${data.import.cron.schedule}">
                    <description>
                        The trigger configured with a remote file system th                        The trigger configured with a remote file system th                        The trigger configured w                           The trigger configured with a remote file system th                        The trigger configured nt="abstractLoadUpload                        The trigger configured with a remote file system th                        The trigger configur                           The trigger configured with a remote file system th                        The{datafiles.import.location.client}"
                                              p:username="${sftp.username}"
                                                                  assword}"/>
                                                                                                                                                                                </property>
                </bean>
ga report-libs-di/src/main/resources/config/di-dataImport-stargate.xml
git rebase --continue
git rebase --skip
git rebase --continue
git s
git l
gc -am"Rebased to latest master"
go master
gb -l
go da-1458_stargate_client-1
git rebase master
go master
go -b da-1457_and_da-1458
git rebase da-1457_queue_bertha_job-2
git rebase da-1458_stargate_client-1
git l
mcis -e
go master
gb -D da-1457_and_da-1458
gb -l
go da-1457_queue_bertha_job-2
git push luveen da-1457_queue_bertha_job-2
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
go -b da-1457_and_da-1458
git rebase da-1458_stargate_client-1
git l
mcis -o -e
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
git s
git diff
git stash
go master
gb -l
go da-1457_queue_bertha_job-2
git stash apply
git s
gc -am"Some wiring stuff"
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
gb da-1457_queue_bertha_job-2 -u luveen/da-1457_queue_bertha_job-3
gb -l
go da-1457_and_da-1458
git rebase da-1457_queue_bertha_job-2
git l
mcis -o -e
mcis -e
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
cd /code/report
mjr_debug cnpo -Djetty.port=8081
git pull origin master
mcis -o -e
mjr_debug cnpo -Djetty.port=8081
w
cd report-libs
gb -l
go da-1457_queue_bertha_job-2
git s
git l
gc -am"Address feedback from code review round 1"
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
git s
gb -l
go da-1458_stargate_client-1
git s
git l
gc -am"Addressed feedback from code review round 2"
git rebase master
git push luveen da-1458_stargate_client-1
git rebase -i master
git l
git push -f luveen da-1458_stargate_client-1
go master
git pull origin master
gb -l
gb da-1457_queue_bertha_job-deleteme luveen/da-1457_queue_bertha_job-3
gb -l
alias gb
gb -d da-1457_queue_bertha_job-deleteme
gb -l
go -b da-1457_queue_bertha_job-deleteme luveen/da-1457_queue_bertha_job-3
git rebase master
git l
go master
git l
gb -l
go da-1457_queue_bertha_job-2
git rebase master
git push luveen da-1457_queue_bertha_job-2
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
git s
git status
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
mjr_debug cnpo -Djetty.port=8081
git s
git diff
go report-libs-di/src/main/resources/config/di-dataImport-stargate.xml
git s
git l
go master
git pull origin master
go -b da-1457_checkstyle_fix
git s
gc -am"Fix checkstyle failure"
mcis -o -e
git push luveen da-1457_checkstyle_fix
go master
gb -l
git pull origin master
go da-1457_queue_bertha_job-2
git rebase master
git l
git s
cp /code/data/data_files/OPWR_CNPO_ITER_data.txt /code/data/import
mcis -o -e
mcis -o -e -rf :report-libs-importer
git s
w
ll
ll clients/
cd clients/cnpo
bash_refresh 
we
w
cd svnwork/clients/cnpo/trunk/working/
gp
mcis -o -e
cd target/
ll
cp client-cnpo-4.7.0-SNAPSHOT.jar /code/data/batch/clients/cnpo/client.jar 
w
cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar
cp /code/data/data_files/OPWR_CNPO_ITER_data.txt /code/data/import
cd /code/data/batch/clients/cnpo/clientconfig/
ll
subl application.properties 
..
rm -rf clientconfig/
cp /code/svnwork/clients/cnpo/trunk/working/src/main/resources/clientconfig .
cp -rp /code/svnwork/clients/cnpo/trunk/working/src/main/resources/clientconfig .
ll
type mjr_debug
type mjr
w
cd svnwork/clients/cnpo/trunk/working/
svn st
svn up
mcis -o -e
w
cd report
w
report-libs
cd report-libs
git s
gc -am"Fix checkstyle"
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
git s
gc -am"Add sourceFile to importJob params to figure out what file to download from Stargate in Bertha job"
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
mcis -o -e
mcis -e
go master
go da-1457_queue_bertha_job-2
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
go master
git pull origin master
go -b da-1458_fix_timeliness_report
git s
gc -am"Use Date to make timeliness report FreeMarker happy"
git push luveen da-1458_fix_timeliness_report
cd report-libs-di/
mci -o -e
..
go master
git s
gb -l
go da-1457_queue_bertha_job-2
mcis -o -e
gb -l
go master
go da-1458_fix_timeliness_report
gits
git s
git l
git s
mcis -o -e
git s
mcis -o -e -rf :report-libs-di
git s
gc -am"Address feedback from CR round 1"
git push luveen da-1458_fix_timeliness_report
git s
git l
gc -am"Use a specific Date"
git push luveen da-1458_fix_timeliness_report
cd report-libs-di
mci -o -e
..
gb -la
go da-1457_queue_bertha_job-2
mcis -o -e
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
go da-1458_fix_timeliness_report
git s
gc -am"Use DateTime.parse()"
git push luveen da-1458_fix_timeliness_report
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
git s
git diff
cd report-libs-di
mcis -o -e
git s
git diff
gc -am"Remove unused import; add checkNotNull message"
git l
git rebase -i master
git k
git l
git push -f luveen da-1458_fix_timeliness_report
gb -l
go da-1457_queue_bertha_job-2
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
gb -l
go da-1458_fix_timeliness_report
gc --amend
git l
git push -f luveen da-1458_fix_timeliness_report
gb -l
go da-1457_queue_bertha_job-2
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
..
mcis -o -e
ack -name
ack QueueBerthaImportJobService.java
mcis -o
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
ll
ll */target
rm -rf */target
ll
rm -rf ~/.m2/repository/com/opower/{batch,bertha*}
rm -rf ~/.m2/repository/com/opower/report-libs*
mcis -e
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
cd report-libs-events
mci -o -e
mci -e
..
mcis -o -e
mcis -o -e -rf :report-libs-di
mcis -o -e
git s
git diff report-libs-di/src/main/resources/config/di-dataImport-spring.xml
mcis -o -e -rf :report-libs-di
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId"}}'
git s
git reset
git l
git stash --helo
git stash create "DA-1457 attempt to revert to bertha 4.7.0"
gl
git reset --hard f91d8b8
git s
git l
mcis -o -e
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId", "sourceFile":"/this/is/a/test_file_name.txt"}}'
w
cd svnwork/clients/cnpo/trunk/working/
bash_refresh 
gp
svn st
svn diff
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId", "sourceFile":"/this/is/a/test_file_name.txt"}}'
-
cd utility-data-import-job
git s
git diff
gc -am"Get to running Bertha job; changes to client jar as well"
git push luveen da-1471_call_report_libs
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId", "sourceFile":'/this/is/a/test_file_name.txt'}}' && popd && echo && echo "Posted." && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId", "sourceFile":"/this/is/a/test_file_name.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId", "sourceFile":'/this/is/a/test_file_name.txt'}}' && popd && echo && echo "Posted." && echo
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"testBundleId", "sourceFile":"/this/is/a/test_file_name.txt"}}' && popd && echo && echo "Posted." && echo
git s
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && BUNDLE_ID=996242c72331b80fb36555f3888f54657eb44fa7 SOURCE_FILE=027b697f5363251497c72057d401f3902fd30d79/OPWR_CNPO_ITER_20140612_20140616.gz curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"${BUNDLE_ID}", "sourceFile":"${SOURCE_FILE}"}}' && popd && echo && echo "Posted." && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"996242c72331b80fb36555f3888f54657eb44fa7", "sourceFile":"027b697f5363251497c72057d401f3902fd30d79/OPWR_CNPO_ITER_20140612_20140616.gz"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"027b697f5363251497c72057d401f3902fd30d79", "sourceFile":"027b697f5363251497c72057d401f3902fd30d79/OPWR_CNPO_ITER_20140612_20140616.gz"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"027b697f5363251497c72057d401f3902fd30d79", "sourceFile":"027b697f5363251497c72057d401f3902fd30d79/OPWR_CNPO_ITER_20140612_20140616.gz"}}' && popd && echo && echo "Posted." && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"027b697f5363251497c72057d401f3902fd30d79", "sourceFile":"027b697f5363251497c72057d401f3902fd30d79/OPWR_CNPO_ITER_20140612_20140616.gz"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"027b697f5363251497c72057d401f3902fd30d79", "sourceFile":"027b697f5363251497c72057d401f3902fd30d79/OPWR_CNPO_ITER_20140612_20140616.gz"}}' && popd && echo && echo "Posted." && echo
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"ba2310af16bc371062a1dbfe3601fc461d20f86f", "sourceFile":"ba2310af16bc371062a1dbfe3601fc461d20f86f/OPWR_CNPO_ITER_DA-28.gz"}}' && popd && echo && echo "Posted." && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"ba2310af16bc371062a1dbfe3601fc461d20f86f", "sourceFile":"ba2310af16bc371062a1dbfe3601fc461d20f86f/OPWR_CNPO_ITER_DA-28.gz"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"ba2310af16bc371062a1dbfe3601fc461d20f86f", "sourceFile":"ba2310af16bc371062a1dbfe3601fc461d20f86f/OPWR_CNPO_ITER_DA-28.gz"}}' && popd && echo && echo "Posted." && echo
url pat
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"ba2310af16bc371062a1dbfe3601fc461d20f86f", "sourceFile":"ba2310af16bc371062a1dbfe3601fc461d20f86f/OPWR_CNPO_ITER_DA-28.gz"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"ba2310af16bc371062a1dbfe3601fc461d20f86f", "sourceFile":"ba2310af16bc371062a1dbfe3601fc461d20f86f/OPWR_CNPO_ITER_DA-28.gz"}}' && popd && echo && echo "Posted." && echo
git s
gc -am"Cleanup todos and obvious things; one-over needed before PR"
git push luveen da-1471_call_report_libs
git s
ga src/main/test/
git s
gc -am"Add tests; cleanup"
git push luveen da-1471_call_report_libs
git s
mci -o -e
git s
gc -am"CR round 1 feedback; Added SFTP retry; fixed location of test classes; removed finals"
git l
git push luveen da-1471_call_report_libs
git s
gc -am"Clarified todo; reverted logging level to WARN"
git push luveen da-1471_call_report_libs
git s
gc -am"Up logging threshold to WARN"
git s
git l
git push luveen da-1471_call_report_libs
mci -o -e
git s
gc -am"Make retry simpler"
git push luveen da-1471_call_report_libs
gp && w
cd bertha
cd batch/bertha
git s
mvn -o dependency:tree
w
cd clients/cnpo/
w
cd svnwork/clients/cnpo/trunk/working/
bash_refresh 
gp
svn diff
..
...
-
cd working/
svn info
...
..
svn co $R/main/clients/cwlz/trunk cwlz/trunk/clean
cd cwlz/trunk
cp -rp clean working
cd working
...
..
cd cnpo/trunk/working/
svn diff
svn st
pushd /code/svnwork/clients/cnpo/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-cnpo-4.7.0-SNAPSHOT.jar /code/data/batch/clients/cnpo/client.jar && popd && echo "Done." && echo
w
ll /code/data/data_cache/
cd /code/batch/bertha/bertha-scheduler/ && mvn activemq:run zookeeper:start jetty:run
cd /code/batch/bertha/bertha-scheduler/ && mvn -o activemq:run zookeeper:start jetty:run
gp && w
ssh prod-stargate-observatory-1001.va.opower.it
gp && w
cd report-libs
cd report-libs-importer/
mcis -o -e
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
cd utility-data-import-job
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
cd utility-data-import-job
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv.txt"}}' && popd && echo && echo "Posted." && echo
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && echo && echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv.txt"}}' && popd && echo && echo "Posted." && echo
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
git diff
git s
ga src/main/java/com/opower/importer/service/impl/AbstractStargateDownloadService.java src/main/java/com/opower/importer/service/impl/StargateLocalFileSystemDownloadService.java
git s
git l
gc -am"More cleanup; log Bertha job ID in ES; mimic Stargate with local filesystem"
git push luveen da-1471_call_report_libs
git s
git diff
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
git s
git diff src/main/resources/config/local/application.properties
go src/main/resources/config/local/application.properties
git s
gc -am"Cleanup Bertha job ID marshalling"
git push luveen da-1471_call_report_libs
git s
mcis -o -e
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
gc -am"Remove client configs"
git push luveen da-1471_call_report_libs
git s
ll src/main/resources/config/local/dc6/cnpo/
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
type create_local_dbs 
subl /tmp/create_local_dbs.sql
subl $workspace/infrastructure/bin/create_dbs.sql
..
cd report-libs
git s
git rm report-libs-importer/src/test/resources/config/queueBerthaImportJobService-test.xml
git rm -f report-libs-importer/src/test/resources/config/queueBerthaImportJobService-test.xml
git s
git diff
go report-libs-importer/src/test/java/opower/importer/TestQueueBerthaImportJobService.java
git s
..
cd utility-data-import-job
gp && w
apdv001
scp luveen.wadhwani@apdv001:/var/poseur/data_files/cnpo/OPWR_CNPO_ITER_data.txt /Users/luveen.wadhwani/Documents/development/4.7/DI4\ Berthafication/OPWR_CNPO_ITER_data_apdv.txt
/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
cd svnwork/clients/
cd cnpo/trunk/working/
bash_refresh 
gp
...
..
mkdir -p duq/trunk/clean && svn co $R/main/clients/duq/trunk duq/trunk/clean
cd duq/trunk
cp -rp clean working
w
cd utility-data-import-job
git s
git diff
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
w
git clone git@github.va.opower.it:opower/imports.git
git clone git@github.va.opower.it:eng-main/imports.git
git clone https://github.va.opower.it/opower/imports.git
cd imports
bundle install
rvm install ruby-1.9.2-p290
gp && w
mysql -u root
mjr_debug cnpo -Djetty.port=8081
mysql -u root
dbdv001
gp && w
cd /code/batch/bertha/bertha-scheduler/ && mvn -o activemq:run zookeeper:start jetty:run
cd /code/batch/bertha/bertha-scheduler/ && mvn -o activemq:run zookeeper:start jetty:run -DCONFIG_DOMAIN=local.dev.dc6
MVN_OFFLINE=-o mjr_debug cnpo activemq:run zookeeper:start
mcis -o -e
MVN_OFFLINE=-o mjr_debug cnpo activemq:run zookeeper:start
mvn -o clean -DLOCAL_PORT=58045 -DCONFIG_DOMAIN=local.dev.dc6 activemq:run zookeeper:start jetty:run
gp && w
tail 0f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_8fe7b790-dec0-4e4e-bb85-e50b78f5ef42.log
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_8fe7b790-dec0-4e4e-bb85-e50b78f5ef42.log
subl $_
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/utility-data-import-job.log
subl $_
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/utility-data-import-job.log
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_91599a8c-87fb-40df-bbed-d47dfc5955c5.log
jps -lm
kill -9 82293
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_8d5cd8ed-2cbf-43a9-bce2-4004e271bb95.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_d90ffcc6-be74-47fd-a114-028b63947ec9.log
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_fcc85710-383a-4abb-9541-cdcacaa43e3e.log
jps -lm
kill -9 83980
kill -9 83988
kill -9 83987
jps -lm
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_6118dc71-07e3-4b1b-85a5-483198ae9553.log
mysql -u root
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_cffc23d2-e50b-4ee0-a915-d7af917a2208.log
jps -lm
kill -9 96433
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_0f698160-4e98-45a5-97da-c41e7ac35888.log
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_ced908fd-a1ff-4640-a2a2-0ffd0c6d341e.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_7aeb781a-cc90-4f65-bb6f-2a6e8c462f1b.log
type mjr
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_46763ce7-5468-491f-adee-a1831e65e1e7.log
jps -lm
mysql
mysql -u root
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_60d272e9-82a1-476b-a7f4-a534d6c1634e.log
type mjr
type set_tunnel_open
gp && w
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
cd report
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
mjr_debug cnpo -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
mysql -u root
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
cd ../report-libs
git s
subl report-libs-importer/src/main/resources/config/importProcess-di4.xml
git rebase --continue
ga report-libs-importer/src/main/resources/config/importProcess-di4.xml
git rebase --continue
git mergetool -t meld
git s
git rebase --continue
git s
rm report-libs-importer/src/main/resources/config/importProcess-di4.xml.orig
git s
gc -am "Rebase against latest master"
git l
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
git rebase master
git rebase -i master
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
for f in report-libs-importer report-libs-di; do pushd $f; echo "Running exhaustive and int tests for ${f}..."; echo; echo mci -Dexhaustive -o -e; echo; echo "Done."; echo; echo "Running unit and int tests for ${f}..."; echo; echo mci -o -e; echo; echo "Done."; for f in report-libs-importer report-libs-di; do pushd $f; echo "Running exhaustive and int tests for ${f}..."; echo; echo mci -Dexhaustive -o -e; echo; echo "Done."; echo; echo "Running unit and int tests for ${f}..."; echo; echo mci -o -e; echo; echo "Done."; popd; done; ;
for f in report-libs-importer report-libs-di; do pushd $f; echo "Running exhaustive and int tests for ${f}..."; echo; echo mci -Dexhaustive -o -e; echo; echo "Done."; echo; echo "Running unit and int tests for ${f}..."; echo; echo mci -o -e; echo; echo "Done."; popd; done
for f in report-libs-importer report-libs-di; do pushd $f; echo; echo "Running exhaustive and int tests for ${f}..."; echo; echo mci -Dexhaustive -o -e; echo; echo "Done."; echo; echo "Running unit and int tests for ${f}..."; echo; echo mci -o -e; echo; echo "Done."; popd; done
for f in report-libs-importer report-libs-di; do pushd $f; echo; echo "Running exhaustive and int tests for ${f}..."; echo; mci -Dexhaustive -o -e; echo; echo "Done."; echo; echo "Running unit and int tests for ${f}..."; echo; mci -o -e; echo; echo "Done."; popd; done
for f in report-libs-importer report-libs-di; do pushd $f && echo && echo "Running exhaustive and int tests for ${f}..." && echo && mci -Dexhaustive -o -e && echo && echo "Done." && echo && echo "Running unit and int tests for ${f}..." &&  echo && mci -o -e && echo && echo "Done." && popd && done
for f in report-libs-importer report-libs-di; do pushd $f && echo && echo "Running exhaustive and int tests for ${f}..." && echo && mci -Dexhaustive -o -e && echo && echo "Done." && echo && echo "Running unit and int tests for ${f}..." &&  echo && mci -o -e && echo && echo "Done." && popd; done
..
-
for f in report-libs-importer report-libs-di; do pushd $f && echo && echo "Running exhaustive and int tests for ${f}..." && echo && mci -Dexhaustive -o -e && echo && echo "Done." && echo && echo "Running unit and int tests for ${f}..." &&  echo && mci -o -e && echo && echo "Done." && popd; done
..
for f in report-libs-importer report-libs-di; do pushd $f && echo && echo "Running exhaustive and int tests for ${f}..." && echo && mci -Dexhaustive -o -e && echo && echo "Done." && echo && echo "Running unit and int tests for ${f}..." &&  echo && mci -o -e && echo && echo "Done." && popd; done
..
for f in report-libs-importer report-libs-di; do pushd $f && echo && echo "Running exhaustive and int tests for ${f}..." && echo && mci -Dexhaustive -o -e && echo && echo "Done." && echo && echo "Running unit and int tests for ${f}..." &&  echo && mci -o -e && echo && echo "Done." && popd; done
for f in report-libs-importer report-libs-di; do pushd $f; echo; (echo "Running exhaustive and int tests for ${f}..."; echo; mci -Dexhaustive -o -e; echo; echo "Done."; echo) && (echo "Running unit and int tests for ${f}..."; echo; mci -o -e; echo; echo "Done."); popd; done
mci -o -e -Dtest=IntTestValidationSummaryHBaseDAO
cd report-libs-importer/
mci -o -e -Dtest=IntTestValidationSummaryHBaseDAO
git s
git diff
gc -am"Fix IntTestValidationSummaryHBaseDAO; code review feedback "
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
mci -o -e -Dtest=TestQ
mci -o -e -Dtest=IntTestValidationSummaryHBaseDAO
gp && w
apdv001
scp luveen.wadhwani@apdv001:/var/poseur/data_files/cnpo/OPWR_CNPO_ITER_data.txt /Users/luveen.wadhwani/Documents/development/4.7/DI4\ Berthafication/OPWR_CNPO_ITER_data_apdv.txt
/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
cd svnwork/clients/
cd cnpo/trunk/working/
bash_refresh 
gp
...
..
mkdir -p duq/trunk/clean && svn co $R/main/clients/duq/trunk duq/trunk/clean
cd duq/trunk
cp -rp clean working
w
cd utility-data-import-job
git s
git diff
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
w
git clone git@github.va.opower.it:opower/imports.git
git clone git@github.va.opower.it:eng-main/imports.git
git clone https://github.va.opower.it/opower/imports.git
cd imports
bundle install
rvm install ruby-1.9.2-p290
rvm use 1.9.3
rvm --versions
ruby --version
rvm install ruby-1.9.3-p484
brew link pkg-config
rvm install ruby-1.9.3-p484
bundle install
ll
RAILS_ENV=alpha rails s thin
sudo gem install rails
RAILS_ENV=alpha rails s thin
bundle install
cat Gemfile
git clone git@github.va.opower.it:opower/opower-hadoop.git
subl Gemfile
bundle install
gem install libv8 -v '3.11.8.17'
bundle install
echo $CONFIG_DOMAIN
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
..
cd utility-data-import-job
..
cd report-libs
go master
git pull origin master
go da-1457_queue_bertha_job-2
git rebase master
brew install meld
meld
git s
gc -am"Revert to original importJobEventListeners"
git l
git rebase master
git rebase -i master
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
gc -am"Remove unused Spring namespaces"
git l
git rebase -i master
git l
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
alias mcie
git s
git diff report-libs-importer/src/main/java/opower/importer/QueueBerthaImportJobService.java
gc -am"Fix tests"
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
create_local_dbs
..
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
cd utility-data-import-job
git s
ga src/main/resources/config/local/dev/dc6/cnpo/
git s
gc -am"Job writes to dev if Bertha scheduler supplied CONFIG_DOMAIN local.dev.dc6"
git push luveen da-1471_call_report_libs
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
type mjr
type setLocalPortForHost
..
cd report-libs
git s
git diff
gc -am"Address code review feedback"
go master
git pull origin master
go da-1457_queue_bertha_job-2
git rebase master
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
git s
git diff
gc -am"More CR feedback; fix failing test"
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
git l
git rebase -i master
git l
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
gp && w
cd batch/bertha
git s
git diff bertha-runner/src/main/java/opower/batch/runner/BerthaJobRunner.java
git s
go -b da-1471_add_local_dev_dc6
git s
go master
git pull origin master
go da-1471_add_local_dev_dc6
git rebase master
gc -am"Log context path; add local.dev.dc6"
git rebase master
mcis -o -e
mcis -e
cd bertha-scheduler/
mvn -o clean -DLOCAL_PORT=58045 -DCONFIG_DOMAIN=local.dev.dc6 activemq:run zookeeper:start jetty:run
mvn -o clean -DLOCAL_PORT=58045 activemq:run zookeeper:start jetty:run
gp && w
cd report-libs
go master
gp && w
cd report-libs
git s
gc -am"Hydrate importjob with id persisted from bertha job"
go master
git pull origin master
go da-1457_queue_bertha_job-2
git l
mcis -o -e
cd report-libs-importer/
mcis -o -e
ll ///code/data/data_cache/cnpo/utility-data-import-job/data_import/NO_CLIENT_NAME/NO_CATEGORY_NAME/1403811683872/OPWR_CNPO_ITER_data_apdv.txt
mcis -o -e
git s
git diff
git l
git s
..
git s
gc -am"log Bertha job ID in ES; hydrate import job object after Bertha job completes"
git push luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
git l
git push -f luveen da-1457_queue_bertha_job-2:da-1457_queue_bertha_job-3
mcis -o -e
cd report-libs-importer/
mcis -o -e
mcis -e
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
..
cd utili
..
cd utility-data-import-job
git s
git diff src/main/resources/config/log4j.properties
gp && w
dbdv001
mysql -u root -A
gp && w
type mjr
type mjr_debug
dbdv001
cd report
mjr_debug cnpo -Djetty.port=8081
dir
alias dir
mysql -u root
mysql -v
mysql --version
..
cd report-libs
gits
git s
..
cd utility-data-import-job
git s
type mjr
mjr_debug cnpo -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
..
cd report
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
mjr_debug cnpo -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081 -Dautopatch.readOnly=true
gp && w
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
cd /code/batch/bertha/bertha-scheduler/ && mvn activemq:run zookeeper:start jetty:run
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
w
git clone https://github.va.opower.it/eng-main/outbound-omnibus-job
cd report-libs
cd report-libs-importer/
mcis -o -e
mcis -e
mcis jar:test-jar
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" —data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "dummy_bundle_3”, "sourceFile":"/Users/george.abraham/opower/data/dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" —data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "dummy_bundle_3”, "sourceFile":"dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" —data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "dummy_bundle_3”, "sourceFile":"dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}'; echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" —data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "dummy_bundle_3”, "sourceFile":"dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}' && echo && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
meld
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" —-data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "dummy_bundle_3”, "sourceFile":"dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}' && echo && echo
meld
curl "http://localhost:8080/v1/executions"--header "Content-Type: application/json"--header "Accept: application/json"-—data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "bundleId":dummy_bundle_3", "sourceFile":"dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" -—data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "bundleId":dummy_bundle_3", "sourceFile":"dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "bundleId":"dummy_bundle_3", "sourceFile":"dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"duq", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"DUQ DI4 One File", "bundleId":"dummy_bundle_3", "sourceFile":"/Users/george.abraham/opower/data/dummy_bundle_3/opwr_duq_full_25MillionNewPart1only10"}}'
w
cd utility-data-import-job
git s
git l
git log
git l
cd /Users/luveen.wadhwani/.m2/repository/com/opower/report-libs-importer/4.9.0-SNAPSHOT
jar xf report-libs-importer-4.9.0-SNAPSHOT-test-sources.jar 
ll
jar tf report-libs-importer-4.9.0-SNAPSHOT-test-sources.jar 
jar tf report-libs-importer-4.9.0-SNAPSHOT-tests.jar 
ll
jar tf report-libs-importer-4.9.0-SNAPSHOT-test-sources.jar 
gp && w
cd report
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
mjr_debug cnpo -Djetty.port=8081
cd ../report-libs/report-libs-di
mcis -o -e
mvn -o -e clean jar:test-jar
jar tf /code/report-libs/report-libs-di/target/report-libs-di-4.9.0-SNAPSHOT-tests.jar
mvn -o -e clean jar:test-jar
jar tf /code/report-libs/report-libs-di/target/report-libs-di-4.9.0-SNAPSHOT-tests.jar
..
cd report-libs-importer/
mvn -o -e clean jar:test-jar
mvn -e clean jar:test-jar
jar tf /code/report-libs/report-libs-importer/target/report-libs-importer-4.9.0-SNAPSHOT-tests.jar
..
-
mcis -o -e
jar tf /Users/luveen.wadhwani/.m2/repository/com/opower/report-libs-importer/4.9.0-SNAPSHOT/report-libs-importer-4.9.0-SNAPSHOT-tests.jar | subl
jar tf /Users/luveen.wadhwani/.m2/repository/com/opower/report-libs-importer/4.9.0-SNAPSHOT/report-libs-importer-4.9.0-SNAPSHOT-test-sources.jar | subl
git s
git diff
go pom.xml
gp && w
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cnpo.DEFAULT.DataImport.lock
cd utility-data-import-job
git s
gc -am"Use firm version of bertha-job-parent"
git push luveen da-1471_fix_deps
go master
git pull origin master
git pull opower master
go da-1471_fix_deps
git l
git commit --amend
git push luveen da-1471_fix_deps
git push -f luveen da-1471_fix_deps
go master
git pull opower master
gb -l
go da-1471_int_test
git rebase master
git l
mcis -o -e
git rebase master
mcis -o -e
git rebase master
mcis -o -e
git s
gp && w
cd svnwork/clients/cwlz/trunk/working/
mcis -o -e
gp && w
gp && w
cd svnwork/clients/cwlz/trunk/working/
mcis -o -e
w
cd report-libs/report-libs-importer/
mcis -o -e
...
cd report
MVN_OFFLINE=-o mjr_debug cwlz -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug cwlz -Djetty.port=8081 -Dautopatcher.readOnly=true
cd ../report-libs
git s
git diff
gc -am"fix typos"
git rebase master
git rebase -i master
git push -f luveen da-1719_move_bertha_bean
gc -amend
gc --amend
git push luveen da-1719_move_bertha_bean
git push -f luveen da-1719_move_bertha_bean
git s
git diff
gc -am"Compact"
git rebase -i master
git l
git push -f luveen da-1719_move_bertha_bean
gp && w
cd svnwork/clients/cwlz/trunk/working/target/
ll
cp client-cwlz-4.9.0-SNAPSHOT.jar /code/data/batch/clients/cwlz/client.jar
mkdir -p /code/data/batch/clients/cwlz
cp client-cwlz-4.9.0-SNAPSHOT.jar /code/data/batch/clients/cwlz/client.jar
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cwlz.DEFAULT.DataImport.lock
w
cd utility-data-import-job
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cwlz.DEFAULT.DataImport.lock
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cwlz.DEFAULT.DataImport.lock
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cwlz.DEFAULT.DataImport.lock
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cwlz.DEFAULT.DataImport.lock
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/cwlz.DEFAULT.DataImport.lock
git s
w
cd report
..
cd report-libs
git s
git diff
git s
gc -am"[DA-1719] Move/add Berthafied DI4 beans to support DA-1463 client config setup"
git push luveen da-1719_move_bertha_bean
..
cd utility-data-import-job
mvn -o -e test -Dtest=ExhaustiveTestUtilityDataImportTasklet
gp && w
cd svnwork/clients/cnp/trunk/working/
svn info
...
..
mkdir -p aic/trunk/clean && svn co $R/main/clients/aic/trunk aic/trunk/clean
mkdir -p amp/trunk/clean && svn co $R/main/clients/amp/trunk amp/trunk/clean
cd aic/trunk/
cp -rp clean working
...
cd amp/trunk
cp -rp clean working
w
cd report-libs
go -b da-1719_move_bertha_bean
cd report-libs-importer/
mcis -o -e
mcis -e
git s
git diff 
git s
git l
..
git s
git l
git push luveen da-1719_move_bertha_bean
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
cd report
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
git s
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
cd ../utility-data-import-job
git s
w
cd report
cd ../report
cd ../report-libs
mvn test -Dexhaustive -o -e
git s
mci test -Dexhaustive -o -e
cd report-libs-importer/
mci test -Dexhaustive -o -e
mci test -Dexhaustive -e
w
cd utility-data-import-job
git s
ga utility-data-import-job-core/pom.xml utility-data-import-job-exhaustive-test/pom.xml utility-data-import-job-exhaustive-test/src/test/java/ utility-data-import-job-exhaustive-test/src/test/resources/com/ utility-data-import-job-exhaustive-test/src/test/resources/config/testClient-application.properties utility-data-import-job-parent/
git s
git stash save "[DA-1471] Introduce maven modules so exhaustive test module can include report-libs-importer as a test dependency. But that doesn't work :("
git stash list
git stash apply
git s
cd utility-data-import-job-exhaustive-test/
mvn dependency:tree
mcis -o -e
mcis -e
..
mcis -e
mcis -o -e
cd utility-data-import-job-exhaustive-test/
mvn -o -e dependency:tree
jar tf target/utility-data-import-job-exhaustive-test-0.1.0-SNAPSHOT-test-sources.jar 
jar tf target/utility-data-import-job-exhaustive-test-0.1.0-SNAPSHOT-with-dependencies.jar 
find ~/.m2/repository/com/opower/report-libs-importer/4.9.0-SNAPSHOT -iname "ImportTestRunner.*"
ll ~/.m2/repository/com/opower/report-libs/4.9.0-SNAPSHOT/
ll ~/.m2/repository/com/opower/report-libs-importer/4.9.0-SNAPSHOT/
cd ~/.m2/repository/com/opower/report-libs-importer/4.9.0-SNAPSHOT/
jar tf report-libs-importer-4.9.0-SNAPSHOT-tests.jar
jps -lm
kill -9 17530
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
mysql -u root -D poseur_test -A
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
cd utility-data-import-job
git s
git rm --cached src/test/resources/config/utilityDataImportJobContext-test.xml
git rm --cached src/test/resources/config/importProcess-test.xml
git s
ll src/test/resources/config/
gc -am"Remove todos, exhaustive test context files"
git stash list
git s
git stash apply
git s
ga src/test/resources/config/importProcess-test.xml src/test/resources/config/utilityDataImportJobContext-test.xml
git s
git stash save "[DA-1471] COMPLETELY Isolated changes for ExhaustiveTestUtilityDataImportTasklet"
git s
git stash list
gc --amend
git s
git l
git push luveen da-1471_int_test
go master
git pull opower master
go -b da-1471_exhaustive_test
git stash list
git stash apply
git s
gc -am"[DA-1471] Exhaustive test"
go master
gb -l
go da-1471_int_test
w
cd svnwork/clients/aic/trunk/working/
svn diff | subl
...
..
cd amp/trunk/working/
svn diff | subl
CLIENT=amp; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
w
cd utility-data-import-job
mcis -o -e
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=amp; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=amp; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
for CLIENT in aic amp; do pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo; done
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
git s
git diff
git s
..
cd report-libs
git s
..
cd report
..
cd svnwork/clients/aic/trunk/working/
svn diff | subl
...
..
cd amp/trunk/working/
svn diff | subl
w
git clone https://github.va.opower.it/opower/entity-sync-job.git
cd entity-sync-job/
git pull origin master
git s
rm atlassian-ide-plugin.xml
..
cd utility-data-import-job
go master
gb -l
go da-1471_exhaustive_test
git l
git s
git diff
git diff opower/master
git push luveen da-1471_exhaustive_test
..
cd report-libs
go master
git pull origin master
gb -l
go da-1719_move_bertha_bean
git rebase master
git push luveen da-1719_move_bertha_bean
git push -f luveen da-1719_move_bertha_bean
go master
gb -l
g0 -b da-1718_bertha_job_id
go -b da-1718_bertha_job_id
w
cd utility-data-import-job
git s
ga utility-data-import-job-exhaustive-test/src/test/resources/config/importProcess-test-aop.xml utility-data-import-job-exhaustive-test/src/test/resources/config/importProcess-test.xml utility-data-import-job-exhaustive-test/src/test/resources/config/reportLibsApplicationContext-test.xml
git s
mcis -o -e
cd utility-data-import-job-exhaustive-test/
cd target/test-classes/
ll
hbase-start
which hbase-start
whereis hbase-start
hbase shell
stop-hbase.sh 
stop-all.sh
start-hbase.sh 
hbse shell
hbase shell
stop-hbase.sh 
rm -rf /opt/hadoop/hadoop_tmp
/opt/hadoop/hadoop namenode -format
cd /opt/hadoop/
hadoop namenode -format
start-hbase.sh 
cat `which start-hbase.sh`
gp && w
-
tail -f target/output.log
subl target/output.log
cd ../report-libs-di/
ll
jar tf target/report-libs-di-4.9.0-SNAPSHOT-tests.jar 
gp && w
cd utility-data-import-job
mvn test -Dtest=ExhaustiveTestUtilityDataImportTasklet
mvn test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
cd utility-data-import-job-exhaustive-test/
mvn test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
ll target/output.log
subl target/output.log
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
mysql -u root -D poseur -A
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
create_local_dbs 
mysql -u root -D poseur -A
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
open /code/utility-data-import-job/utility-data-import-job-exhaustive-test/target/surefire-reports
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
create_local_dbs 
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
..
git s
ll utility-data-import-job-exhaustive-test/src/test/resources/clientconfig/
ll utility-data-import-job-exhaustive-test/src/test/resources/com/
ga utility-data-import-job-exhaustive-test/src/test/resources/clientconfig/ utility-data-import-job-exhaustive-test/src/test/resources/com/ utility-data-import-job-exhaustive-test/src/test/resources/config/ExhaustiveTestUtilityDataImportJob-application.properties utility-data-import-job-exhaustive-test/src/test/resources/config/log4j.properties
git s
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
-
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestUtilityDataImportTasklet
gp && w
start-hbase.sh 
cd report-libs/report-libs-importer/
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestCustomerImporter
w
cd utility-data-import-job/utility-data-import-job-exhaustive-test/
cd target/
tailf output.log
git s
ll ../src/test/resources/clientconfig/
tailf output.log
subl output.log
tailf output.log
subl output.log
tailf output.log
subl output.log
tailf output.log-
-
tailf output.log
gp && w
mysql -u root -D poseur_test -A
create_local_dbs
mysql -D poseur_test
mysql -u root -D poseur_test -A
gp && w
cd utility-data-import-job/utility-data-import-job-exhaustive-test/
mvn -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestCustomerImporter
mci -o -e test -DfailIfNoTests=false -Dtest=ExhaustiveTestCustomerImporter
..
mci -o -e
gp && w
-
cd target/
tailf output.log
gp && w
cd utility-data-import-job
mci0o 0e
mci -o -e
mvn test -o -e
gp && w
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
cd utility-data-import-job
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
cd ~/Documents/development/4.7/DI4\ Berthafication/
ll
cp stargate_id_rsa ~/.ssh/
cd ~/.ssh/
ll
mv id_rsa id_rsa.orig
mv stargate_id_rsa id_rsa
cd /code/utility-data-import-job
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
git s
ga src/main/java/com/opower/importer/core/StargateConfiguration.java
git s
git l
gc -am"CR Round 1 - Part2"
gb -l
go da-1471_exhaustive_test
go da-1471_int_test
go da-1471_ali
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
cd report
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081
git pull origin master
cd ../report-libs
git pull origin master
mcis -o -e
..
cd report
-
cd report-libs
mcis -e
cd ../report
mcis -e
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081
git s
MVN_OFFLINE=-o mjr_debug cnp -Djetty.port=8081
mjr_debug cnp -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug cnp -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug
mysql -u root -D poseur -A
create_local_dbs 
mysql -u root -D poseur -A
cd report-libs
cd report-libs-importer/
mvn test -Dexhaustive -o -e
mci -Dexhaustive -o -e
mysql -u root -D poseur_test -A
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
mysql -u root -D poseur_test -A
mysql -u root -D poseur -A
gp && w
gp && w
gp && w
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
gp && w
ssh prod-stargate-sftp-archive-1001.va.opower.it
ssh test-stargate-sftp-archive-1001.va.opower.it
ssh dev-stargate-observatory-1001.va.opower.it
ssh prod-stargate-observatory-1001.va.opower.it
ssh 1048576
ssh dev-stargate-sftp-archive-1001.va.opower.it
ssh -v dev-stargate-sftp-archive-1001.va.opower.it
ssh -v prod-stargate-observatory-1001.va.opower.it
ssh -v dev-stargate-sftp-archive-1001.va.opower.it
cd ~/.ssh
ll
mv id_rsa id_rsa.stargate
mv id_rsa.orig id_rsa
type swap
mv id_rsa id_rsa.orig
mv id_rsa.stargate id_rsa
mv id_rsa id_rsa.stargate
mv id_rsa.orig id_rsa
gp && w
ssh stage-stargate-observatory-1001.va.opower.it
ssh prod-stargate-observatory-1001.va.opower.it
cd utility-data-import-job
git s
mcis -o -e
git s
ll data_import
rm -rf data_import/
ga src/test/resources
git s
ga src/test/java/com/opower/importer/service/impl/TestStargateLocalFileSystemDownloadService.java
ga src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
gc -am"used FileTransfer; SFTP download service doesn't seem to work"
git push luveen da-1471_ali
echo $JAVA_HOME
which java
whereis java
ll /usr/bin/java
ll /System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java
ll /System/Library/Frameworks/JavaVM.framework
ll /System/Library/Frameworks/JavaVM.framework/Versions/
cd /Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
ll
cd jre/lib/security/
ll
w
git clone https://github.va.opower.it/opower/readstream-service.git
git remotes
cd readstream-service/
git remotes
git remote add chrisb https://github.va.opower.it/chris-barrett/readstream-service
git remote add opower https://github.va.opower.it/opower/readstream-service
git remote remove origin
git remotesr
git remotes
git fetch chrisb
go SA-443/PR
jmeter
ll
find . -iname progressive_stress.sh
cd readstream-server/
subl performance/progressive_stress.sh 
ll
ll performance/
gp && w
cd utility-data-import-job
git rm /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rm --cached /code/utility-data-import-job/src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git s
ll data_import/
rm -rf data_import/
rm -rf data_import
ll
git s
gc -m"Completed CR feedback except for removing unused application properties"
git push luveen da-1471_ali
git l
git rebase -i master
git s
gc -am"Completed CR feedback except for removing unused application properties"
git s
git rebase master
git rebase -i master
git stash
subl src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
rm package com.opower.importer.service.impl;
import com.google.common.collect.Lists;
import com.opower.importer.core.StargateConfiguration;
import opower.stargate.api.ArrivalInfo;
import opower.stargate.api.Checksum;
import opower.stargate.api.Content;
import opower.stargate.api.DataSpec;
import opower.stargate.api.FileClassification;
import opower.stargate.api.Header;
import opower.stargate.api.PayloadInfo;
import opower.stargate.api.StargateBundle;
import opower.stargate.api.StargateFile;
import org.easymock.EasyMockSupport;
import org.joda.time.DateTime;
import org.junit.Test;
import org.springframework.batch.retry.policy.SimpleRetryPolicy;
import org.springframework.batch.retry.support.RetryTemplate;
import poseur.di.bundle.stargate.StargateBundleRequester;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import static org.easymock.EasyMock.expect;
import static org.junit.Assert.assertTrue;
import static com.opower.importer.service.StargateDownloadService.StargateDownloadReimport static com.opower.importer.serverimport static com.opower.importer.service.StargadResponse;
/**
 * Ensure that {@link StargateS * Ensure that {@link StargateS * Epected.
 *
 * @author luveen.wadhwani
ateS * EstateS * EstateS * EstateS * EstateS * EstateS upport {
    private static final String TEST_FILE_STEM = "random_generated_f    private static final String TEST_FILETE    private static final String TEST_Fvat    private static final SST_FINISH_TIME = new DateTime(2013, 5, 27, 4, 24, 4, 0);
    priv    priv    priv    priv    priv    priv    priv    priv    priee    priv    priv    priv    priv    priv    priv    priv     T    priv    priv    priv    priv    priv    priv    priving TEST_MESSAGE_TYPE = "bundle_ready";
    private static final String TEST_SENDER = "sender";    private static final Striing     private static final String TEST_SEtic f    private static final String;
    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privat    privatM_NAME =    privat    privat    privat    privat    privat    privat    privat c5456228919f306421231b1a";
    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[]    prti    private static final String[]    private static final String[]    private static final StriST    private static final String[]    private static final String[]    private static final StriST    private static final String[r;
    private static final Map<String, String> TEST_DATA_SPEC_TAGS = new HashMap<String, String>() {{
        put("test_tag_key", "test_tag_value");
    }};
rm src/test/java/com/opower/importer/service/impl/TestStargateSFTPDownloadService.java
git rebase --continue
git l
git push -f luveen da-1471_ali
git s
gc -am"Merge changes"
git l
git rebase master
git rebase -i master
git push -f luveen da-1471_ali
cd report
MVN_OFFLINE=-o mjr_debug cnp -Djetty.port=8081
git s
git diff
gc -am"Simplified destination path; addressed CR feedback"
git push luveen da-1471_ali
mcis -o -e
git s
git status
git s
gp && w
gp && w
gp && w
gp && w
w
cd svnwork/clients/aic/trunk/working/
svn diff
svn ci -m "[DA-1718] Configure AIC to use Berthafied Imports"
cd ../../../amp/trunk/working/
svn diff
svn ci -m "[DA-1719] Configure AMP to use Berthafied Imports"
-
svn log
svn log | more
svn diff
svn up
svn log | more
svn propset -r 239987 --revprop svn:log "[DA-1719] Configure AIC to use Berthafied Imports"
svnadmin setlog . -r 239987
vim da_1719_log_message
svnadmin setlog . -r 239987 da_1719_log_message 
svnadmin setlog /code/svnwork/clients/aic/trunk/working -r 239987 da_1719_log_message 
w
cd report-libs
gb -l
go da-1719_move_bertha_bean
git s
git diff
gc -am"code review feedback round 1"
git push luveen da-1719_move_bertha_bean
git log
go master
git pull origin master
go da-1719_move_bertha_bean
git rebase master
git rebase -i master
git k
gl
git push -f luveen da-1719_move_bertha_bean
go master
gb -l
git pull origin master
go -b da-1718_lock_file
go master
gb -D da-1718_lock_file
git pull origin master
go -b da-1718_lock_file
cd ..
cd site-service
git s
git pull origin master
gb -l
cd ..
-
git infor
git info
git status
git remotes
..
mv site-service deleteme-site-service
git clone https://github.va.opower.it/opower/site-service.git
cd site-service
cd ../report-libs
git s
go report-libs-importer/src/main/resources/config/common/importProcess-billing.xml
gc -am"Step 1 - add to LockingService interface and implementations"
go master
git pull origin master
go -b da-1719_correct_configs
git s
gc -am"[DA-1719] Fix configs"
git push luveen da-1719_correct_configs
gb -l
go da-1718_lock_file
gp && w
gp && w
gp && w
gp && w
emptytrash 
ssh site-service@dev-service-1014.va.opower.it
cd site-service/site-serverr
bundle install
git pull origin master
bundle install
bundle exec cap alpha deploy:start
bundle exec cap alpha maintenance:delete
bundle exec cap alpha deploy:status
bundle exec cap alpha deploy:stop
bundle exec cap alpha deploy:start
curl http://dev-service-1014.va.opower.it:8230
curl http://dev-service-1013.va.opower.it:8230
ssh site-service@dev-service-1014.va.opower.it
bundle exec cap alpha deploy:stop
bundle exec cap alpha deploy:start --hosts=dev-service-1013.va.opower.it
HOST=dev-service-1013.va.opower.it bundle exec cap alpha deploy:start
ssh site-service@dev-service-1014.va.opower.it
bundle exec cap alpha deploy:start
gp && w
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
gp && w
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"cnpo", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"CNPO DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/OPWR_CNPO_ITER_data_apdv_one_line.txt"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"/code/data/data_cache/aic/dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
gp && w
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_ed0cb447-a5e1-4cd0-b17d-90dedc9b594f.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_dc73779e-86aa-49d9-a037-f0dbf1c68ea8.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_cnpo_fec42709-7df3-4840-80d8-29e9037f1e56.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_c93fc1c4-ce21-4b39-a07c-c02d6b516c0c.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_f08a1c02-19f6-4e96-967a-1c7569b9ae96.log
tailf/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_e196e2da-9ac1-42a0-8e98-b5a54fe22cac.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_e196e2da-9ac1-42a0-8e98-b5a54fe22cac.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_e196e2da-9ac1-42a0-8e98-b5a54fe22cac.log
gp && w
cd utility-data-import-job
git s
git diff
git s
go src/main/resources/config/dev/application.properties
gc -am"use FileTransferFactory"
git log
git l
git push luveen da-1471_ali
go master
git pull origin master
git pull opower master
go -b no-refs_update_es
git push luveen no-refs_update_es
go master
go da-1724_update_es
go -b da-1724_update_es
gc -am"[DA-1724] Update dev ES hosts referenced in config"
git push luveen da-1724_update_es
mcis -o -e
go master
gb -l
go da-1471_ali
mcis -o -e
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
mci -o -e
git s
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
git s
git diff
git s
ga src/main/java/com/opower/importer/core/StargateConfiguration.java src/main/java/com/opower/importer/service/StargateDownloadService.java src/main/java/com/opower/importer/service/impl/AbstractStargateDownloadService.java src/main/java/com/opower/importer/service/impl/StargateLocalFileSystemDownloadService.java src/main/java/com/opower/importer/service/impl/StargateSFTPDownloadService.java src/test/java/com/opower/importer/service/impl/TestStargateLocalFileSystemDownloadService.java
git s
git rm --cached src/test/java/com/opower/importer/service/impl/TestStargateLocalFileSystemDownloadService.java
git s
gc -m"Tested"
git rebase master
git rebase -i master
git push -f luveen da-1471_ali
gb -l
go da-1724_update_es
git diff
gc -am"Addressed CR feedback - round 1"
git push luveen da-1724_update_es
gp && w
cd /code/batch/bertha/bertha-scheduler
git s
git l
git diff
git diff origin master
w
cd report
git s
go -b da-1718_lock_file
git s
rm atlassian-ide-plugin.xml hs_err_pid51443.log 
ga src/main/java/poseur/web/di/DashboardController.java src/main/java/poseur/web/di/LockController.java src/main/java/poseur/web/di/LockingAwareImportJobController.java src/main/webapp/WEB-INF/config/dataImport.xml src/test/java/poseur/web/di/TestDashboardController.java src/test/java/poseur/web/di/TestLockController.java
git s
gc -m"[DA-1718] Write Bertha job ID to lock file"
gc --amend
git push luveen da-1718_lock_file
git remoters
git remotes
git remote add luveen https://github.va.opower.it/luveen-wadhwani/report
git push luveen da-1718_lock_file
cd ../report-libs
git s
git l
gc -am"[DA-1718] Use ImportQueue for locking service; testing pending"
git push luveen da-1718_lock_file
gp && w
gp && w
gp && w
gp && w
-
git s
go master
go -b da-1471_optional_queue
git s
git diff
mcis -o -e
gc -am"[DA-1471] Make import queue optional"
git push luveen da-1471_optional_queue
gb -l
gp && w
-
go master
git pull origin master
go -b da-1471_optional_queue
cd report-libs-importer/
mcis -o -e
mcis -e
..
find . -iname "StargateConfiguration.java"
find . -iname "StargateConfiguration.*"
cd ..
cd report
find . -iname "StargateConfiguration.*"
find . -iname "StargateConfiguration.java"
cd ../report-libs
git s
git diff
gc -am"[DA-1471] Make import queue optional"
git push luveen da-1471_optional_queue
gb -l
go da-1718_lock_file
git l
git s
ll /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/test.group name.this is the name of the job.lock
ll "/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/test.group name.this is the name of the job.lock"
subl "/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/test.group name.this is the name of the job.lock"
git s
gc -am"Update affected tests; still some test cases to implement"
git push luveen da-1718_lock_file
gb -l
go da-1471_optional_queue
git s
git diff
gc -am"Plug a hole"
git push luveen da-1471_optional_queue
gp && w
gp && w
dbdv001
ssh dbdv001
gp && w
ssh dbdv001
gp && w
dbdv001
gp && w
cd utility-data-import-job
gits
git s
go master
git pull origin master
git pull opower master
go -b da-1724_update_mvn_dep
git diff
gc -am"[DA-1724] Update ES version in Maven"
git push luveen da-1724_update_mvn_dep
git s
go master
gb -ol
gb -l
git pull origin master
git pull opower master
gb -k
gb -l
go da-1471_optional_queue
git diff
git s
ga src/main/java/com/opower/importer/core/DataImportInputParameter.java
gc -m"Addressed CR round 1 feedback"
git push luveen da-1471_optional_queue
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
gb -l
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
cd /code/svnwork/clients/aic/trunk/working/
svn st
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
cp target/client-aic-4.10.0-SNAPSHOT.jar 
CLIENT=aic; cp target/client-aic-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
jps -lm
kill -9 18406
pushd /code/report-libs-di
pushd /code/report-libs/report-libs-di
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
git s
gc -am"Check for nonexistent lock file in readLockData"
git push luveen da-1718_lock_file
go master
git pull origin master
go da-1718_lock_file
git rebase master
git rebase -i master
cd ..
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat $_
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cp /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock.test
cd report-libs-importer/
mcis -o -e
cd ../report-libs-di
mcis -o -e
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
cd /code/report-libs
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
gp && w
cd utility-data-import-job
gits
git s
go master
git pull origin master
git pull opower master
go -b da-1724_update_mvn_dep
git diff
gc -am"[DA-1724] Update ES version in Maven"
git push luveen da-1724_update_mvn_dep
git s
go master
gb -ol
gb -l
git pull origin master
git pull opower master
gb -k
gb -l
go da-1471_optional_queue
git diff
git s
ga src/main/java/com/opower/importer/core/DataImportInputParameter.java
gc -m"Addressed CR round 1 feedback"
git push luveen da-1471_optional_queue
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
gb -l
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
cd /code/svnwork/clients/aic/trunk/working/
svn st
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
cp target/client-aic-4.10.0-SNAPSHOT.jar 
CLIENT=aic; cp target/client-aic-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
jps -lm
kill -9 18406
pushd /code/report-libs-di
pushd /code/report-libs/report-libs-di
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
git s
gc -am"Check for nonexistent lock file in readLockData"
git push luveen da-1718_lock_file
go master
git pull origin master
go da-1718_lock_file
git rebase master
git rebase -i master
cd ..
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat $_
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cp /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock.test
cd report-libs-importer/
mcis -o -e
cd ../report-libs-di
mcis -o -e
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
cd /code/report-libs
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
gp && w
cd utility-data-import-job
gits
git s
go master
git pull origin master
git pull opower master
go -b da-1724_update_mvn_dep
git diff
gc -am"[DA-1724] Update ES version in Maven"
git push luveen da-1724_update_mvn_dep
git s
go master
gb -ol
gb -l
git pull origin master
git pull opower master
gb -k
gb -l
go da-1471_optional_queue
git diff
git s
ga src/main/java/com/opower/importer/core/DataImportInputParameter.java
gc -m"Addressed CR round 1 feedback"
git push luveen da-1471_optional_queue
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
gb -l
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
cd /code/svnwork/clients/aic/trunk/working/
svn st
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
cp target/client-aic-4.10.0-SNAPSHOT.jar 
CLIENT=aic; cp target/client-aic-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
jps -lm
kill -9 18406
pushd /code/report-libs-di
pushd /code/report-libs/report-libs-di
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
git s
gc -am"Check for nonexistent lock file in readLockData"
git push luveen da-1718_lock_file
go master
git pull origin master
go da-1718_lock_file
git rebase master
git rebase -i master
cd ..
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat $_
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cp /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock.test
cd report-libs-importer/
mcis -o -e
cd ../report-libs-di
mcis -o -e
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
cd /code/report-libs
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
gp && w
cd utility-data-import-job
gits
git s
go master
git pull origin master
git pull opower master
go -b da-1724_update_mvn_dep
git diff
gc -am"[DA-1724] Update ES version in Maven"
git push luveen da-1724_update_mvn_dep
git s
go master
gb -ol
gb -l
git pull origin master
git pull opower master
gb -k
gb -l
go da-1471_optional_queue
git diff
git s
ga src/main/java/com/opower/importer/core/DataImportInputParameter.java
gc -m"Addressed CR round 1 feedback"
git push luveen da-1471_optional_queue
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
gb -l
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
cd /code/svnwork/clients/aic/trunk/working/
svn st
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
cp target/client-aic-4.10.0-SNAPSHOT.jar 
CLIENT=aic; cp target/client-aic-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
jps -lm
kill -9 18406
pushd /code/report-libs-di
pushd /code/report-libs/report-libs-di
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
git s
gc -am"Check for nonexistent lock file in readLockData"
git push luveen da-1718_lock_file
go master
git pull origin master
go da-1718_lock_file
git rebase master
git rebase -i master
cd ..
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat $_
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cp /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock.test
cd report-libs-importer/
mcis -o -e
cd ../report-libs-di
mcis -o -e
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
cd /code/report-libs
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
gp && w
cd utility-data-import-job
gits
git s
go master
git pull origin master
git pull opower master
go -b da-1724_update_mvn_dep
git diff
gc -am"[DA-1724] Update ES version in Maven"
git push luveen da-1724_update_mvn_dep
git s
go master
gb -ol
gb -l
git pull origin master
git pull opower master
gb -k
gb -l
go da-1471_optional_queue
git diff
git s
ga src/main/java/com/opower/importer/core/DataImportInputParameter.java
gc -m"Addressed CR round 1 feedback"
git push luveen da-1471_optional_queue
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
gb -l
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
cd /code/svnwork/clients/aic/trunk/working/
svn st
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.9.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
cp target/client-aic-4.10.0-SNAPSHOT.jar 
CLIENT=aic; cp target/client-aic-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
jps -lm
kill -9 18406
pushd /code/report-libs-di
pushd /code/report-libs/report-libs-di
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
git s
gc -am"Check for nonexistent lock file in readLockData"
git push luveen da-1718_lock_file
go master
git pull origin master
go da-1718_lock_file
git rebase master
git rebase -i master
cd ..
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat $_
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cp /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock.test
cd report-libs-importer/
mcis -o -e
cd ../report-libs-di
mcis -o -e
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
cd /code/report-libs
for d in report-libs-di report-libs-importer; do echo pushd ${d}; mcis -o -e; popd; done
cd /code/report-libs
for d in report-libs-di report-libs-importer; do pushd ${d}; mcis -o -e; popd; done
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cp /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock.test /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cp /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock.test /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/aic.DEFAULT.DataImport.lock
git s
gp && w
cd report
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081
mjr_debug aic -Djetty.port=8081
cd ../report-libs
mcis -o -e
mcis -o -e -rf :report-libs-di
cd ../report
mjr_debug aic -Djetty.port=8081
mcis -o -e
mjr_debug aic -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
pushd ../report-libs/report-libs-di/
mcis -o -e
popd
mcis -o -e
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
pushd ../report-libs/report-libs-di/
mcis -o -e
popd
mcis -o -e
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
pushd ../report-libs/report-libs-importer/
mcis -o -e
popd
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
mcis -o -e
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
MVN_OFFLINE=-o mjr_debug -Djetty.port=8081 -Dautopatcher.readOnly=true
mvn -o clean -Djetty.port=8081 -DCONFIG_DOMAIN=local -Dautopatcher.readOnly=true          jetty:run
mvn -o -e clean jetty:run -Djetty.port=8081 -DCONFIG_DOMAIN=local -Dautopatcher.readOnly=true
mjr_debug
mjr
MVN_OFFLINE=-o mjr_debug -Djetty.port=8081 aic -Dautopatcher.readOnly=true
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
mcis -o -e
MVN_OFFLINE=-o mjr_debug aic -Djetty.port=8081 -Dautopatcher.readOnly=true
gp && w
cd report-
w
cd report-libs
go master
gb -l
go da-1718_lock_file
ll "/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/test.group name.this is the name of the job.lock"
cat $_
cat "/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/test.group name.this is the name of the job.lock"
subl "/var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/test.group name.this is the name of the job.lock"
git diff
git s
gc -am"Completed unit test cases"
git push luveen da-1718_lock_file
gb -l
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run -DCONFIG_DOMAIN=local.dev.dc6
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
host=dbdv001;
setLocalPortForHost $host;
set_tunnel_open $host;
if [ -z $TUNNEL_OPEN ] || [ $TUNNEL_OPEN == "0" ]; then   echo "You do not have your ssh tunnel to $host running";   ssh_tunnel $host;   echo "Running Jetty against $host for utility $1"; fi;
mvn -DLOCAL_PORT=58045 -DCONFIG_DOMAIN=local.dev.dc6 activemq:run zookeeper:start jetty:run
host=dbdv001;
setLocalPortForHost $host;
set_tunnel_open $host;
if [ -z $TUNNEL_OPEN ] || [ $TUNNEL_OPEN == "0" ]; then   echo "You do not have your ssh tunnel to $host running";   ssh_tunnel $host;   echo "Running Jetty against $host for utility $1"; fi;
mvn -e -o -DLOCAL_PORT=58045 -DCONFIG_DOMAIN=local.dev.dc6 activemq:run zookeeper:start jetty:run
mvn -e -o activemq:run zookeeper:start jetty:run
host=dbdv001;
setLocalPortForHost $host;
set_tunnel_open $host;
if [ -z $TUNNEL_OPEN ] || [ $TUNNEL_OPEN == "0" ]; then   echo "You do not have your ssh tunnel to $host running";   ssh_tunnel $host;   echo "Running Jetty against $host for utility $1"; fi;
mvn -DLOCAL_PORT=58045 -DCONFIG_DOMAIN=local.dev.dc6 activemq:run zookeeper:start jetty:run
mvn -o -e -DLOCAL_PORT=58045 -DCONFIG_DOMAIN=local.dev.dc6 activemq:run zookeeper:start jetty:run
mvn -e -DLOCAL_PORT=58045 -DCONFIG_DOMAIN=local.dev.dc6 activemq:run zookeeper:start jetty:run
mvn -e -o activemq:run zookeeper:start jetty:run
gp && w
cd report
cd ../report-libs
cd ../utility-data-import-job
gb -l
-
git s
gc -am"More fixes"
git push luveen da-1718_lock_file
cd ../report
git s
ga src/main/java/poseur/web/di/DashboardController.java src/main/java/poseur/web/di/LockController.java src/test/java/poseur/web/di/TestDashboardController.java src/test/java/poseur/web/di/TestLockController.java
git s
gc -m"More fixes"
git push luveen da-1718_lock_file
myqsl -u root -D batch
mysql -u root -D batch
mysql -u root -D posuer -A
mysql -u root -D poseur -A
git s
cd ../report-libs
git s
git diff
gc -am"Clean up log messages"
git l
cd ../utility-data-import-job
git s
git diff
go src/main/resources/config/local/application.properties
go src/main/resources/config/log4j.properties
git s
cd ../report-libs
git l
cd ../report
git l
git diff
git diff origin/master
go master
git pull origin master
gb -l
go da-1718_lock_file
git rebase master
git rebase -i master
git push -f luveen da-1718_lock_file
mcis -o -e
git s
git l
gc --amend
git push -f luveen da-1718_lock_file
cd ../utility-data-import-job
git s
w
cd report-libs
mvn -o -e -Dexhaustive
mvn -o -e clean install -Dexhaustive
for f in report-libs-importer report-libs-di; do pushd $f; echo; (echo "Running exhaustive and int tests for ${f}..."; echo; mci -Dexhaustive -o -e; echo; echo "Done."; echo) && (echo "Running unit and int tests for ${f}..."; echo; mci -o -e; echo; echo "Done."); popd; done
Running exhaustive and int tests
cd ../utility-data-import-job
git l
git rebase master
git rebase -i master
git push -f luveen da-1471_optional_queue
gp && w
cd report-libs
git s
gb -l
gc -am"Improve exception handling"
git l
git push luveen da-1718_lock_file
git push -f luveen da-1718_lock_file
go master
git pull origin master
go da-1718_lock_file
mcis -o -e
git rebase master
git rebase -i master
git l
git push -f luveen da-1718_lock_file
cat /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/test.DEFAULT.TestLoadUploadedFilesService.lock
git s
git l
gc -am"Fix test breaks"
git rebase master
git s
gc -am "More test fixes"
git l
git rebase master
git rebase -i master
git push -f luveen da-1718_lock_file
gp && w
cd utility-data-import-job
git s
git diff
gc -am"Begin addressing CR feedback from round 2"
go master
git pull opower master
go da-1471_optional_queue
git rebase master
gb -l
git s
git l
git diff opower/master
git diff
git l
git reset 149eeee
git reset --hard 149eeee
git s
go master
git pull opower master
go -b da-1471_two_comments
git s
git diff
mcis -o -e
git s
ga src/main/java/com/opower/importer/core/ImportJobBuilder.java src/test/java/com/opower/importer/core/TestImportJobBuilder.java
gc -m"[DA-1471] Addres late CR feedback"
git push luveen da-1471_two_comments
go da-1741_ali
gb -l
go da-1471_ali
git s
ga src/main/java/com/opower/importer/service/impl/StargateSFTPDownloadService.java
gc -m"Address CR feedback round "
gc --amend
git l
git diff opower/master
git rebase master
git rebase --continue
git diff opower/master
git diff opower/master | subl
git s
git l
gc -m"Rebased to latest master"
git push -f luveen da-1471_ali
gb -l
go da-1471_two_comments
git rebase master
git rebase -i master
git push luveen da-1471_two_comments
go master
g0 da-1471_two_comments
go da-1471_two_comments
git diff master
gb -l
go da-1471_ali
git diff master
mci -o 0e
mci -o -e
git s
subl src/test/java/com/opower/importer/service/impl/TestStargateLocalFileSystemDownloadService.java
rm TestStargateLocalFileSystemDownloadService
rm src/test/java/com/opower/importer/service/impl/TestStargateLocalFileSystemDownloadService.java
mci -o -e
go master
git pull opower master
cd ../report-libs
go master
git pull opower master
git pull origin master
go da-1471_optional_queue
git rebase master
go master
go -b da-1718_fix_checkstyle
cd report-libs-di
mcis -o -e
git s
gc -am"[DA-1718] Fix checkstyle error"
git push luveen da-1718_fix_checkstyle
go master
git pull origin master
gp && w
gp && w
gp && w
gp && w
cd report
git s
git diff
mvn -o -e test -DfailIfNoTests=false -Dtest=TestDashboardController
mvn -e test -DfailIfNoTests=false -Dtest=TestDashboardController
mvn -e -o test -DfailIfNoTests=false -Dtest=TestDashboardController
git s
git diff
gc -am"Address - CR comments - round 1"
git l
git rebase master
git rebase -i master
git k
git l
git push -f luveen da-1718_lock_file
git s
git push -f luveen da-1718_lock_file
git s
git diff origin/master
git l
gp && w
cd report-libs
git l
git s
git diff
git l
gc -am"Address CR feedback - round 1"
git push luveen da-1718_lock_file
go da-1471_optional_queue
git s
git diff
git s
gc -am"Addressed CR feedback - round 1"
git rebase master
git rebase -i master
git push -f luveen da-1471_optional_queue
gp && w
gp && w
gp && w
gp && w
cd report-libs
go master
git pull origin master
git l
go -b no-refs_fix_log
git l
git reset --hard b2f7722
git rebase -i master
git l
go master
gb -D no-refs_fix_log
git rebase -i HEAD~4
git l
go -b no-refs_fix_log
go master
git l
git reset --hard 4020023
git pull origin master
gb -D no-refs_fix_log
go -b no-refs_fix_log
git rebase -i HEAD~4
git l
git push luveen no-refs_fix_log
go master
git pull origin master
mvn test -Dtest=TestLockController -DfailIfNoTests=false
mvn -e test -Dtest=TestLockController -DfailIfNoTests=false
mci -e test -Dtest=TestLockController -DfailIfNoTests=false
mci -e -Dtest=TestLockController -DfailIfNoTests=false
mcis -o -e
mcis -e
cd ..
cd core/
git pull origin master
mcis -o -e
-
cd report-libs
mcis -o -e
mvn -e test -Dtest=TestLockController -DfailIfNoTests=false
git s
cd ../report
go master
git s
git stash
go master
git pull origin master
go -b da-1718_fix_test_lock_controller
git s
gc -am"[DA-1718] Fix breaking test"
git push luveen da-1718_fix_test_lock_controller
git s
gc -am"change lines order"
git rebase master
git rebase -i master
git push -f luveen da-1718_fix_test_lock_controller
git s
gc -am"Remove extra lines"
git rebase -i master
git push -f luveen da-1718_fix_test_lock_controller
go master
gb -l
cd ../utility-data-import-job
git pull origin master
gb -l
go da-1471_exhaustive_test
cd ..
git status
git remotes
cd ..
git clone
git clone https://github.va.opower.it/opower/utility-data-import-job.git utility-data-import-job-2
cd utility-data-import-job-
..
rm -rf utility-data-import-job-orig
rm -rf utility-data-import-job-backup
cd utility-data-import-job-2/
cd utility-data-import-job
git s
git diff utility-data-import-job-core/src/main/java/com/opower/importer/batch/UtilityDataImportTasklet.java
ll src/test/resources/com/opower/importer/service/impl/test_import_file.txt 
go master
git stash
go master
git pull origin master
go da-1471_exhaustive_test
git s
go *
git stash
go master
gp && w
gp && w
cd report-libs
git pull origin master
cd ../utility-data-import-job
git pull origin master
git pull opower master
cd ../report
git s
gc -am"[DA-1718] Fix Freemarker"
git push luveen da-1718_fix_ftl
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_c202f8a9-c29a-4530-8f65-357cedbbac4c.log
cd report
git pull origin master
go -b da-1718_fix_ftl
MVN_OFFLINE=-o mjr_debug -Dautopatcher.readOnly=true
MVN_OFFLINE=-o mjr_debug
mjr_debug -Dautopatcher.readOnly=true
MVN_OFFLINE=-o mjr_debug
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
w
cd utility-data-import-job
git pull origin master
git pull opower master
go da-1471_ali
go master
git pull opower master
go da-1471_ali
git rebase master
git rebase --continue
git rebase -i master
git push -f luveen da-1471_ali
mcis -o -e
mci -o -e
git s
mci -o -e
git s
go master
git stash
go master
go -b da-1471_remove_ssh_username
git stash apply
git s
git diff
gc -am"[DA-1471] Remove unused SSH username field from StargateConfiguration"
go master
git pull opoower master
git pull opower master
go da-1471_remove_ssh_username
git diff
git diff master
go master
git pull opower master
go da-1471_remove_ssh_username
git diff origin/master
git diff opower/master
git push luveen da-1471_remove_ssh_username
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
git s
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
git s
ga src/main/java/com/opower/importer/service/impl/AbstractStargateDownloadService.java
ga src/main/resources/config/jobContext.xml
gc -m"Fix rebase errors"
git s
git stash
git s
git stash apply
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
git rebase opower/master
git stash
git rebase opower/master
go master
git pull --rebase opower master
git stash
git pull --rebase opower master
git rebase --abort
go master
git pull --rebase opower master
git l
gb -l
gb -D da-1471_remove_ssh_username
go -b da-1471_remove_ssh_username
git s
gc -am "[DA-1471] Remove unused SSH username field from StargateConfiguration"
git push luveen da-1471_remove_ssh_username:da-1471_remove_ssh_username-1
go master
go -b da-1724_add_es_to_other_envs
git stash list
git stash apply
git s
gc -am"[DA-1724] Add ES config for all environments"
git push luveen da-1724_add_es_to_other_envs
git s
gc -am"Remove extraneous changes"
git rebase master
git rebase -i master
git push -f luveen da-1724_add_es_to_other_envs
go master
git pull opower master
gb -l
go da-1471_remove_ssh_username
git s
gc -am"Remove app properties"
git rebase master
git rebase -i master
git l
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
git s
git diff
git s
go src/main/resources/config/local/application.properties src/main/resources/config/log4j.properties
git s
git l
git push luveen da-1471_remove_ssh_username
git push luveen da-1471_remove_ssh_username:da-1471_remove_ssh_username-1
git push -f luveen da-1471_remove_ssh_username:da-1471_remove_ssh_username-1
jps -ln
jps -lm
kill -9 13124
mysql -D batch
mysql -u root -D batch
jps -lm
kill -9 13320
mysql -u root -D batch
-
git s
git push luveen da-1471_remove_ssh_username:da-1471_remove_ssh_username-1
git push -f luveen da-1471_remove_ssh_username:da-1471_remove_ssh_username-1
git stash list
gp && w
gp && w
gp && w
-
go master
git pull opower master
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
jps -lm
gp && w
cd report
go master
git pull origin master
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -DLOCAL_PORT=8081
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -DLOCAL_PORT=8081
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
LOCAL_PORT=8081 MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -DLOCAL_PORT=8081
LOCAL_PORT=8081 MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
echo $LOCAL_PORT
LOCAL_PORT=8081 MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
type mjr
type setLocalPortForHost
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -DLOCAL_PORT=8081
lsof | grep 58045
ps aux | grep 11642
kill -9 11642
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
LOCAL_PORT=8081 MVN_OFFLINE=-o mjr_debug
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4
mvn -o clean -DLOCAL_PORT=8081 -Dclient=aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 jetty:run
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -Djetty.port=8081
gp && w
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e -DLOCAL_PORT=8081 activemq:run zookeeper:start jetty:run
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
gp && w
cd report-libs
git fetch origin 4.10.x
git pull origin master
go 4.10.x
git pull origin 4.10.x
mcis -e
cd /Users/luveen.wadhwani/.m2/repository/com/opower/report-libs-importer/4.10.1-SNAPSHOT
cp report-libs-importer-4.10.1-SNAPSHOT.jar ~/Desktop/
cd ~/Desktop/
mv report-libs-importer-4.10.1-SNAPSHOT.jar report-libs-importer-4.10.0-SNAPSHOT.jar 
scp report-libs-importer-4.10.0-SNAPSHOT.jar luveen.wadhwani@apdv001.va.opower.it:/home/luveen.wadhwani
apdv001
dbdv001
ssh jetty@apdv001
ssh jetty@apdv001.va.opower.it
ssh apdv001.va.opower.it
ssh jetty@dpdv001
ssh jetty@dpdv001.va.opower.it
ssh build@dpdv001.va.opower.it
ssh build@apdv001.va.opower.it
ssh dpdv001.va.opower.it
gp && w
scp /Users/luveen.wadhwani/Desktop/report-libs-importer-4.10.0-SNAPSHOT.jar luveen.wadhwani@apdv001:/home/luveen.wadhwani'
scp /Users/luveen.wadhwani/Desktop/report-libs-importer-4.10.0-SNAPSHOT.jar luveen.wadhwani@apdv001:/home/luveen.wadhwani
scp /Users/luveen.wadhwani/Desktop/report-libs-importer-4.10.0-SNAPSHOT.jar luveen.wadhwani@apdv001:/home/luveen.wadhwani
scp /Users/luveen.wadhwani/Desktop/report-libs-importer-4.10.0-SNAPSHOT.jar luveen.wadhwani@apdv001.va.opower.it:/home/luveen.wadhwani
apdv001
gp && w
ssh build@dpdv001
ssh build@dpdv001.va.opower.it
dpdv0901
dpdv001
gp && w
gp && w
gp && w
gp && w
cd entity-sync-job/
git pull origin master
cd ~/.ssh
ll
cp id_rsa ~/Dropbox/Work/Opower/
cp id_rsa.pub ~/Dropbox/Work/Opower/
cp id_rsa_opower* ~/Dropbox/Work/Opower/
w
cd utility-data-import-job
gb -l
go da-1471_int_test
git s
rm -rf src/test/resources/
go da-1471_int_test
git s
git l
git diff master
go master
git pull opower master
go -b da-1888_unit_test_download_services
git s
ga src/test/java/com/opower/importer/service/impl/StargateSFTPDownloadServiceTest.java src/test/java/com/opower/importer/service/impl/TestStargateLocalFileSystemDownloadService.java
gc -m"[DA-1888] Add unit tests for Stargate download services"
go master
go da-1471_int_test
go da-1888_unit_test_download_services
mcis -o -e
mcis -e
mcis -U -e
mcis -o -e
git s
ll src/test/java/com/opower/importer/service/impl/util/
ga src/test/java/com/opower/importer/service/impl/util/
ga src/test/resources/
git s
gc -am"Fix up"
git l
git rebase master
git rebase -i master
git push luveen da-1888_unit_test_download_services
gb -l
git push luveen da-1471_exhaustive_test
bwdv002
apdv001
ssh build@apdv001.va.opower.it
ssh build@dpdv001.va.opower.it
ssh dpdv001.va.opower.it
mysql -u root -D poseur
mysql -u root -D poseur -A
cd utility-data-import-job
go master
go -b da-1471_def_prop
gc -am"[DA-1471] Define property placeholder for StargateLocalFileSystemDownloadService"
git push luveen da-1471_def_prop
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"utility-data-import-job", "client":"aic", "action":"START", "jobParameters":{"importType":"UTIL", "importQueue.group":"DEFAULT", "importQueue.name":"DataImport", "readerName":"AIC DI4 One File", "bundleId":"dummy_bundle_id", "sourceFile":"dummy_bundle_id/opwr_aic_full1_apdv_one_line.txt"}}'
git clone https://github.va.opower.it/opower/imports
cd imports/
git s
git pull origin master
git stash
git pull origin master
git stash apply
git diff
ll
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
tail -f /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_6c71ebd0-f700-4121-b066-8af967937cf3.log
subl $_
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_2845be27-358d-4de0-883e-425e638e1f1c.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_2845be27-358d-4de0-883e-425e638e1f1c.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_ecca55bc-49b6-4bdd-a199-0dff188bcbe9.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_f9056227-5a8c-44e8-9d3f-cb063f09ffba.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_878a515f-889c-4d79-a234-daa65172908f.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_acb65b48-3bc6-4b38-9eac-c45e784799ba.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_utility-data-import-job_aic_ce457ec3-06a3-49c0-b7a5-c61bce18171c.log
cd utility-data-import-job
git diff
gc -am"Fix up"
go master
git pull opower master
go da-1471_def_prop
git diff
git diff opower/master
gc --amend
git l
git rebase master
git rebase -i master
git push luveen da-1471_def_prop:da-1471_def_prop-1
mysql -u root -D batch -A
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
ssh build@dpdv001.va.opower.it
ssh jetty@bwdv002.va.opower.it
dpdv001
ll
dpdv001
cd site-service
git pull origin maste
git pull origin master
git remotes
gp && w
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/clpp.DEFAULT.DataImport.lock
gp && w
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/clpp.DEFAULT.DataImport.lock
gp && w
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/clpp.DEFAULT.DataImport.lock
gp && w
git clone https://www.dropbox.com/s/07lxzvdqr7y2br7/Funny%20readme%20image.tiff
git clone https://github.va.opower.it/libraries/libs-transfer.git
cd report-libs
go master
git pull origin master
git stash
git pull origin master
git stash apply
git s
git alias --list
git config alias
git config 
git config -l
git diff
git d
go -b da-1905_event_listener_di4
git s
mcis -o -e
mcis -e
cd ../report
MVN_OFFLINE=-o mjr_debug clpp -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -Djetty.port=8081
git pull origin master
MVN_OFFLINE=-o mjr_debug clpp -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -Djetty.port=8081
mjr_debug clpp -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug clpp -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -Djetty.port=8081
gp && w
dpdv001
cd svnwork/clients/
ll
cd aic/
svn info
cd trunk/working/
svn info
...
..
svn co $R/main/clients/clpp/trunk clpp/trunk/clean && cp -rp clpp/trunk/clean clpp/trunk/working
ping svn.va.opower.it
ssh $_
ssh -v $_
svn co svn+ssh://10.20.64.244/opt/svnroot/main/clients/clpp/trunk clpp/trunk/clean && cp -rp clpp/trunk/clean clpp/trunk/working
ll clpp/trunk/*
cd clpp/trunk/working/
mcis -o -e
svn diff
svn diff --color
svn diff --color | subl
svn diff | subl
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
gp && w
git clone https://github.va.opower.it/eng-main/recipient-eligibility-job.git
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
pushd /code/recipient-eligibility-job/ && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/recipient-eligibility-job/target/recipient-eligibility-job-4.11.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/recipient-eligibility-job/job.jar && echo "Done." && popd && echo
pushd /code/recipient-eligibility-job/ && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/recipient-eligibility-job/target/recipient-eligibility-job-4.11.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/recipient-eligibility-job/job.jar && echo "Done." && popd && echo
ll /code/recipient-eligibility-job/target/*.jar
pushd /code/recipient-eligibility-job/ && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/recipient-eligibility-job/target/recipient-eligibility-job-parent-4.11.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/recipient-eligibility-job/job.jar && echo "Done." && popd && echo
cd target
ll
..
subl re-job-alias/pom.xml 
cd re-job-alias/
mcis -o -e
ll /code/data/batch/jobs/recipient-eligibility-job
w
cd report-libs
mcis -o -e
mcis -o -e -rf :report-libs-importer
cd ../report
cd ..
cd report-libs/report-libs-importer/
mcis -o -e
..
git s
git d
git diff
git s
gc -am"[DA-1905] Make import job event listener firing identical for legacy and DI4 imports"
git push luveen da-1905_event_listener_di4
gp && w
CLIENT=clpp; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=clpp; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.11.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
mkdir -p /code/data/batch/clients/clpp/
CLIENT=clpp; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.11.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/clpp.DEFAULT.DataImport.lock
w
cd entity-sync-job/
mcis -o -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/clpp.DEFAULT.DataImport.lock 
git pull origin master
mcis -o -e
mcis -e
cd ..
cd site-service
git pull origin master
mcis -o -e
mcis -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/clpp.DEFAULT.DataImport.lock
cd ../entity-sync-job/
mcis -o -e
mcis -e
rm /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/clpp.DEFAULT.DataImport.lock
gp && w
gp && w
gp && w
emptytrash 
cd report-libs/report-libs-importer/
mci -o -e
mvn test -o -e -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenException
mcis -o -e
mvn test -o -e -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenException
gp && w
cd /code/data/data_files/clpp/dummy_bundle_id/
ll
cd /code/data/data_cache/aic/import-process/
ll
cd /code/data/data_cache/aic/utility-data-import-job/data_import/NO_CLIENT_NAME/NO_CATEGORY_NAME/1406758409903/
ll
w
cd report-libs/report-libs-importer/target/
tailf debug.log 
taild debug.log 
tailf debug.log 
..
git diff
git s
gp && w
gp && w
gp && w
cd site-service
git pull origin master
w
cd youtube-dl/
youtube-dl
bin/youtube-dl
git pull origin master
ll
./youtube-dl
./youtube-dl -x --audio-format "mp3" https://www.youtube.com/watch?v=5HC5D-M3Wfw
git s
rm Jee\ Le\ Zaraa\ -\ Talaash\ \(Cover\ by\ Alaa\ Wardi\)-5HC5D-M3Wfw.mp3 
git s
git diff
..
cd report-libs/report-libs-importer/
git s
gc -am"Modified tests"
mcis -o -e
mvn test -o -e
mvn test -o -e -Dexhaustive
mci -o -e
gp && w
mysql
cd report
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Dimport.di4.mode=di4 -Djetty.port=8081
git pull origin master
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Djetty.port=8081
cd ../report-libs
go master
git pull origin master
mcis -o -e
-
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Djetty.port=8081
gp && w
cd report
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Djetty.port=8081
gp && w
find /private/var/folders -iname utility-data-import-job -type d
sudo find /private/var/folders -iname utility-data-import-job -type d
sudo find /private/var/folders -iname "utility-data-import-job"
cd utility-data-import-job
git s
git diff
go src/main/java/com/opower/importer/service/impl/AbstractStargateDownloadService.java
git l
go master
gb -l
go da-1888_unit_test_download_services
git status
git info
git remotes
..
git clone https://github.va.opower.it/opower/utility-data-import-job.git u-d-i-j
cd u-d-i-j/
mcis -o -e
pushd /code/u-d-i-j && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/u-d-i-j/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run
mysql -u root -D batch -A
gp && w
cd report
MVN_OFFLINE=-o mjr_debug aic -Dautopatcher.readOnly=true -Djetty.port=8081
mjr_debug aic -Dautopatcher.readOnly=true -Djetty.port=8081
-
mci -o -e
..
mcis -o -e
-
mcis -o -e
mci -o -e
CLIENT=aic; pushd /code/svnwork/clients/${CLIENT}/trunk/working && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-4.11.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
cp target/client-aic-4.10.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar
svn st
svb yo
svn up
mcis -o -e
mysql -u root -D poseur
jps -lm
for; do jps -lm; sleep 1500; done
for 1; do jps -lm; sleep 1500; done
for true; do jps -lm; sleep 1500; done
for (( ; ; )); do jps -lm; sleep 1500; done
for (( ; ; )); do echo; jps -lm; echo; sleep 2; done
ps aux | grep hbase
ps aux | grep java
kill 3490
ps aux | grep java
kill 3491
ps aux | grep java
ps aux | grep java | awl '{ print $ 2}'
ps aux | grep java | awk '{ print $2}'
ps aux | grep java
jps -lm
cd ~/.m2/
ll
ll repository/com/opower/clients-parent/4.10.0-SNAPSHOT/
find . -iname "*aic*"
rm ./repository/com/positiveenergyusa/client-aic/4.11.0-SNAPSHOT/client-aic-4.11.0-SNAPSHOT.jar
rm ./repository/com/positiveenergyusa/client-aic/4.11.0-SNAPSHOT/client-aic-4.11.0-SNAPSHOT.pom
find . -iname "*aic*"
jps -lm
kill -9 39408
w
cd utility-data-import-job
git s
git pull opower master
pushd /code/utility-data-import-job && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp /code/utility-data-import-job/target/utility-data-import-job-0.1.0-SNAPSHOT-with-dependencies.jar /code/data/batch/jobs/utility-data-import-job/job.jar && echo "Done." && popd && echo
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
cd report-libs
gb -l
go da-1905_event_listener_di4
mci -o -e
cd report-libs-importer/
mci -o -e -Dtest=IntTestParcelImportProcess#testUncaughtErrorFailsImport
mvn test -o -e -Dtest=IntTestParcelImportProcess#testUncaughtErrorFailsImport
MAVEN_OPTS="-Xmx512M -XX:MaxPermSize=256M -Xdebug -Xrunjdwp:transport=dt_socket,server=y,address=9092,suspend=y" mvn test -o -e -Dtest=IntTestParcelImportProcess#testUncaughtErrorFailsImport
MAVEN_OPTS="-Xmx512M -XX:MaxPermSize=256M -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9092" mvn test -o -e -Dtest=IntTestParcelImportProcess#testUncaughtErrorFailsImport
mci -o -e -Dtest=IntTestParcelImportProcess#testUncaughtErrorFailsImport
mci -o -e -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled
mci -o -e -Dtest=IntTestGenericImportProcess
mci -o -e -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled
type mctj
type mci
type mcis
type mjr
bash_refresh 
gp
mctj IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled
bash_refresh 
gp
type mctj
subl ~/.aliases 
alias mcis=''
alias mcis='mvn clean install -DskipTests=true'
type mctj
alias mctj=''
type mctj
subl ~/.functions
mctj
bash_refresh
gp
subl ~/.bash_profile 
type mctj
gp && w
jps -lm
jstack -F 3357
mysql -D poseur
mysql -D poseur -uroot
mysql -D poseur -uroot -A
cd report-libs
cd target/
tailf target/output.log
..
-
tailf target/output.log
ll target
jps -lm
jstack -F 8006
type mjr
type mjr_debug
cd report-libs-importer/
tailf target/debug.log 
subl target/debug.log 
tailf target/debug.log 
subl target/debug.log 
tailf target/debug.log 
subl $_
ll $_
tailf target/debug.log 
gp && w
type mctj
cd report-libs/report-libs-importer/
mctj IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled
mctj -o -e IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled
mctj -o -e -DfailIfNoTests=true IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled
mctj IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled -o -e -DfailIfNoTests=true
mvn test -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled -o -e -DfailIfNoTests=true
mctj IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled -o -e -DfailIfNoTests=true
mvn test -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled -o -e -DfailIfNoTests=true
git s
git diff
git s
git diff
gc -am"Cleanup"
go master
git pull origin master
mvn test -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenMigrationsDisabled -o -e -DfailIfNoTests=true
mcis -o -e
mvn test -o -e DfailIfNoTests=true -Dtest=IntTestCustomerClassificationImporter#testUsageReadListenerNotCalledWhenException
mvn test -o -e -DfailIfNoTests=true -Dtest=IntTestCustomerClassificationImporter#testUsageReadListenerNotCalledWhenException
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestCustomerClassificationImporter#testUsageReadListenerNotCalledWhenException
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenException
gb -l
go da-1905_event_listener_di4
mcis -o -e
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestGenericImportProcess#testUsageReadListenerNotCalledWhenException
mcis -o -e
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestGenericImportProcess#
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestGenericImportProcess
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestGenericImportProcess#testMigrationRegularWayRollback
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestGenericImportProcess#testUsageReadListenerOnCompleteCalledForSuccessfulImportWhenMigrationDisabled+testMigrationRegularWayRollback
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestGenericImportProcess
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestGenericImportProcess#testUsageReadListenerOnCompleteCalledForFailedImportWhenMigrationDisabled
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestDefaultImportProcess
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestCustomerClassifierDefinitionImporter
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestCustomerClassificationImporter
ll
subl .functions
subl .aliases
afk
bash_refresh
gp
bash_refresh 
gp
w
cd report-libs
git s
git diff
gp && w
cd report-libs/report-libs-importer/target/
tailf debug.log 
cp debug.log ~/Desktop/debug.log.IntTestGenericImportProcess.testAccountListenerOnCompleteCalledForFailedImportWhenMigrationDisabled
cp debug.log ~/Desktop/debug.log.IntTestGenericImportProcess.testAccountListenerOnCompleteCalledWhenException 
subl ~/Desktop/debug.log.IntTestGenericImportProcess.testAccountListenerOnCompleteCalledWhenException 
subl ~/Desktop/debug.log.IntTestGenericImportProcess.testAccountListenerOnCompleteCalledForFailedImportWhenMigrationDisabled 
gp && w
-
mvn test -o -e -Dtest=IntTestGenericImportProcess#testAccountListenerOnCompleteCalledForFailedImportWhenMigrationDisabled
mvn test -o -e -Dtest=IntTestGenericImportProcess#testAccountListenerOnCompleteCalledWhenException
gp && w
echo $M2_HOME
which mvn
ll /usr/local/bin/mvn
ll ../Cellar/maven30/3.0.5/bin/mvn
ll /usr/local/Cellar/maven30/3.0.5/bin/mvn
ll /usr/local/Cellar/maven30/3.0.5/
whereis mvn
which mvn
subl ~/.paths
subl ~/.bash_pro
subl ~/.bash_profile 
subl ~/.path
subl ~/.exports 
bash_refresh 
gp
subl ~/.MacOSX/environment.plist 
gp && w
which mvn
ll `which mv`
ll `which mvn`
gp && w
echo $m2_HOME
echo $M2_HOME
echo $M2
echo MAVEN_HOME
echo $MAVEN_HOME
afk
mysql -u root -D poseur_test -A
cd report-libs/report-libs-importer/target/
tailf debug.log
ll
..
cd target/
tailf debug.log
..
tailf target/debug.log 
git s
git diff
gc -am"One last cleanup before review"
git push luveen da-1905_event_listener_di4
-
cd target/
tailf debug.log 
...
mcis -o -e
-
tailf debug.log 
..
for f in report-libs-importer; do pushd $workspace/report-libs/$f; echo; (echo "Running exhaustive and int tests for ${f}..."; echo; mci -Dexhaustive -o -e; echo; echo "Done."; echo) && (echo "Running unit and int tests for ${f}..."; echo; mci -o -e; echo; echo "Done."); popd; done
mvn test -o -e -Dexhaustive -Dtest=ExhaustiveTestUtilityAccountUsageBaselineImporter
mvn test -o -e -Dexhaustive -Dtest=ExhaustiveTestUtilityAccountUsageBaselineImporter,ExhaustiveTestUsageReadImporter,ExhaustiveTestServicePointImporter,ExhaustiveTestRebateImporter,ExhaustiveTestI18NServicePointImporter
mvn test -o -e -Dexhaustive -Dtest=ExhaustiveTestI18NServicePointImporter
mci -o -e -Dexhaustive -Dtest=ExhaustiveTestI18NServicePointImporter
mci -o -e -Dexhaustive
mysql -u root -D poseur_test -A
echo ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>s:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtiliuntUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:IntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestcheckCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  Exhnt,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataes:265 The following tables in production schema still have data: re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSs:ty_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did   ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did   ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: usage_read,read_stream,service_point,erDid you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contac  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,custoio_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_se  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_accoating tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_setti  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_setti  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,custbles in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,custome  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,custome  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customiorodDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_conta  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_conta  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have daporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatiot,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>Abstiocustomer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>Abstioomer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestServicePointImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: read_stream,service_point,site_location,site_parcel,site,subscription_delivery_schedule,subscription,lu_delivery_schedule,lu_delivery_period,import_job,utility_company.  Did you commit by accident? expected null, but was:<read_stream,service_point,site_location,site_parcel,site,subscription_delivery_schedule,subscription,lu_delivery_schedule,lu_delivery_period,import_job,utility_company>
  ExhaustiveTestServicePointImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: read_stream,service_point,site_location,site_parcel,site,subscription_delivery_schedule,subscription,lu_delivery_schedule,lu_delivery_period,import_job,ref_parcel,utility_company.  Did you commit by accident? expected null, but was:<read_stream,service_point,site_location,site_parcel,site,subscription_delivery_schedule,subscription,lu_delivery_schedule,lu_delivery_period,import_job,ref_parcel,utility_company>
echo "ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>"
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.check  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.check  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.check  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.check  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.check  ExhaustiveTestUtilityAccountUsageBaspany>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTe_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSs:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCoected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_rate_plan_component,utility_acct_alias,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSs:  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:  ExhaustiveTestUtilityAcpoint,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<re_utility_account_usage_baseline,re_rate_plan_component,utility_acct,service_point,customer,site,import_job,utility_company>
  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestSupport.che  ExhaustiveTestUtilityAccountUsageBaselineImporter>AbstractImporterIntTestes:ty_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did   ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did   ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in ion,site_parcel,customer_targeting_settings,customer_demographics,customercustomer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>Abst  arch,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,import_job,utility_company.  Did you commit by accident? expected null, but was:<customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utilit  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utilit  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCoco  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utilit  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utilit  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCoco  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The followiniomer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following ta  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following ta  Exhausion,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>Abstioct,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,s  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you iot,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locacatiocustomer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company.  Did you commit by accident? expected null, but was:<utility_account_search,utility_acct,usage_read,read_stream,service_point,site_location,site_parcel,customer_targeting_settings,customer_demographics,customer_contact,customer_notification_contact,customer_targeting_settings,customer_search,customer,site,import_job,utility_company>
  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: utility_account_search,utility_acct,usage_read,read_stream,service_point,site_locatio  ExhaustiveTestUsageReadImporter>Abstiohedule,lu_delivery_period,import_job,ref_parcel,utility_company.  Did you commit by accident? expected null, but was:<read_stream,service_point,site_location,site_parcel,site,subscription_delivery_schedule,subscription,lu_delivery_schedule,lu_delivery_period,import_job,ref_parcel,utility_company>
  ExhaustiveTestRebateImporter>AbstractImporterIntTestSupport.checkCountOnProdDataSourceTables:265 The following tables in production schema still have data: import_job.  Did you commit by accident? expected null, but was:<import_job>
cd report-libs/report-libs-importer/
git s
git diff
gc -am"Moar cleanup"
git l
git push luveen da-1905_event_listener_di4
gp && w
git clone https://github.va.opower.it/opower/sensu-opower-plugins.git
cd sensu-opower-plugins/
git pull origin master
ll
git remotes
git pull origin master
..
rm -rf sensu-opower-plugins/
git clone https://github.va.opower.it/opower/sensu-opower-plugins.git
cd sensu-opower-plugins/
git remote add ba https://github.va.opower.it/bhuwan-agarwal/sensu-opower-plugins
git fetch ba
git checkout SA-728/742
git l
gem install rubocop
rvm gem install rubocop
which ruby
rvm list
rvm use ruby-1.9.3-p484
rvm gem install rubocop
gem install rubocop
rubocop
gp && w
-
git s
git diff
mcis -o -e
gc -am"Code review feedback round 1"
git push luveen da-1905_event_listener_di4
gp && w
haxelib run awe6 create project createjs bouncy ball luveen.wadhwani
haxelib setup
haxelib run awe6 create project createjs bouncy ball luveen.wadhwani
haxelib install awe6
haxelib run awe6 create project createjs bouncy ball luveen.wadhwani
ll
ll bouncy/
haxelib run awe6 install
haxelib install openfl
haxelib run openfl setup
haxelib install lime
haxelib run openfl setup
haxelib run lime setup
lime install openfl
lime create openfl:project bouncyfl
lime create openfl:PiratePig
cd PiratePig/
ll
haxelib install nape
haxelib install nape-hacks
haxelib install nape-symbolic
..
git clone https://github.com/deltaluca/goodies.git
cd PiratePig/
open .
haxelib install haxeflixel
haxelib install flixel
which haxe
which haxelib
ll /usr/bin/haxelib 
ll /usr/bin/haxe
ll /usr/lib/haxe/
..
cd bouncyfl/
lime test mac
cd ../PiratePig/
lime test mac
ll
gp && w
bash_refresh
gp
mv goodies haxe-goodies
cd haxe-goodies/
kk
ll
//
..
openfl create
which openfl
whereis openfl
lime create
lime create openfl
lime create openfl:SimpleOpenGLView
ll
cd SimpleOpenGLView/
lime test mac
-
git s
go master
git stash
go master
go da-1905_event_listener_di4
git stash apply
git s
gc -am"Review feedback round 2 - refactor ValidationStep"
git push luveen da-1905_event_listener_di4:da-1905_event_listener_di4_1
go master
git pull origin master
go da-1905_event_listener_di4
git rebase master
git rebase -i master
git push luveen da-1905_event_listener_di4:da-1905_event_listener_di4-1
git stash list
git l
bash_refresh
gp
rm -rf bouncy*
lime create openfl:project bouncy
cd /usr/lib/haxe/
ll
cd lib
ll
echo $HAXE
echo $HAXE_HOME
echo $HAXEPATH
echo $HAXE_LIBRARY_PATH
ll ..
ll ../std/
open ~/.path
subl ~/.exports 
which neki
which neko
ll /usr/bin/ne
ll /usr/bin/neko
ll /usr/lib/neko
bash_refresh
gp
echo $HAXEPATH
bash_refresh
gp
gp && w
gp && w
gp && w
-
..
git l
git reset HEAD^
gitl 
git l 
git s
ga report-libs-importer/src/main/java/opower/importer/validation/ImportAndValidate.java report-libs-importer/src/main/java/opower/importer/validation/PreValidationSetup.java report-libs-importer/src/main/java/opower/importer/validation/ValidationStep.java report-libs-importer/src/main/java/opower/importer/validation/ValidationStepRunner.java
git s
git stash save "[DA-1905] Refactor ValidationStep into separate classes"
git s
git diff
git diff luveen/da-1905_event_listener_di4
gc -am"Review feedback round 2"
go master
git pull origin master
go da-1905_event_listener_di4
git rebase master
git rebase -i master
git l
git push luveen da-1905_event_listener_di4
git push -f luveen da-1905_event_listener_di4:da-1905_event_listener_di4_2
mcis -o -e
git stash list
git push -f luveen da-1905_event_listener_di4
git l
mcis -o -e
mcis -o -e -rf :report-libs-importer
git s
git diff | subl
cd report-libs-importer/
mcis -o -e
git s
git diff | subl
gc -am"Review feedback round 3"
git push luveen da-1905_event_listener_di4
git s
git diff
gc -am"rename performValidations to importAndValidate"
git push luveen da-1905_event_listener_di4
gp && w
cd /code/data/batch/jobs/utility-data-import-job
ll
ssh qa-jenkins-slave-1013
ssh qa-jenkins-slave-1013.va.opower.it
bwdv002
-
..
git pull luveen 
git pull luveen da-1905_event_listener_di4
git l
git rebase master
go master
git pull origin master
go da-1905_event_listener_di4
git rebase master
git rebase -i master
git l
git push -f luveen da-1905_event_listener_di4
gp && w
cd report-libs
go master
git pull origin master
git s
git status
go -b da-1905_fix_exhaustive_test
git s
mcis -o -e -Dexhaustive -Dtest=ExhaustiveTestUsageReadImporter#testImportSchemaPopulated
mcis -e -Dexhaustive -Dtest=ExhaustiveTestUsageReadImporter#testImportSchemaPopulated
cd report-libs-importer
mci -o -e -Dexhaustive -Dtest=ExhaustiveTestUsageReadImporter#testImportSchemaPopulated
mci -o -e -Dtest=ExhaustiveTestUsageReadImporter#testImportSchemaPopulated
mci -o -e -Dexhaustive -Dtest=ExhaustiveTestUsageReadImporter#testImportSchemaPopulated
gp && w
-
git s
git diff
gc -am"[DA-1905] Fix exhaustive test"
git push luveen da-1905_fix_exhaustive_test
go master
git fetch 4.11.x
git fetch origin 4.11.x
go da-1905_fix_exhaustive_test
git l
go 4.11.x
go -b da-1905_fix_exhaustive_test_4_11
git cherry-pick 6be6ca0
git s
git l
git diff origin/4.11.x
git push luveen da-1905_fix_exhaustive_test_4_11
gp && w
gp && w
apm
apm install minimap
apm install file-icons
apm install autocomplete-plus
apm install subword-navigation
apm install pen-paper-coffee-syntax
apm install project-manager
apm install tree-view
apm install fuzzy-finder
apm install tabs
cd report-libs
go master
git pull origin master
git l
gp && w
emptytrash 
gp && w
cd entity-services-common/
git s
mcis -o -e
git s
git diff origin/master | subl
git s
git l
gc -am"Done"
git rebase master
git rebase -i master
git push luveen sa-634_delete_data
mcis -o -e
mci -o -e
mci -o -e -rf :entity-services-common-core
mci -o -e
git d
git s
rmm atlassian-ide-plugin.xml
rm atlassian-ide-plugin.xml
git s
git diff | subl
gc -am"Code review feedback round 1"
git push luveen sa-634_delete_data
git s
rm atlassian-ide-plugin.xml
git s
gc -am"Complete javadoc for test method"
git push luveen sa-634_delete_data
git diff
gc -am"Lower exception mapper log level; improved doc/naming on AbstractEntityServerResource"
git push luveen sa-634_delete_data
gp && w
cd customer-service
cd customer-server/
ll
cd ../customer-db/db
mysql -Dcustomer < test_data.sql
mysql -Dcustomer -uroot -A < test_data.sql
...
mysql -uroot < customer-db/db/schema-local.ddl 
mcis -o -e
cd customer-server
java -jar target/customer-server-0.1.9-SNAPSHOT server src/main/resources/local.yml
java -jar target/customer-server-0.1.9-SNAPSHOT.jar server src/main/resources/local.yml
...
cd archmage
git pull origin master
go -b isp-1331_add_error_response_mapper
gp && w
cd entity-services-common/
mcis -o -e
mci -o -e
mci -o -e -rf :entity-services-common-core
git s
rm atlassian-ide-plugin.xml
gc -am"Review feedback round 2"
git push luveen sa-634_delete_data
git s
gc -am"Fix line length on javadoc"
git s
git push luveen sa-634_delete_data
git s
git diff
gc -am"rename things"
git push luveen sa-634_delete_data
git l
gc --amend
git rebase master
git rebase -i master
git l
git rebase -i master
git l
git push -f luveen sa-634_delete_data
git s
git diff
git s
ga entity-services-common-core/src/main/java/com/opower/entity/dto/DeleteDataResponse.java
git s
git diff luveen/sa-634_delete_data
git s
git diff
gc -am"Review feedback round 3"
git s
git diff
git l
go *
git s
git reset
git s
git reset --hard
git diff
git diff luveen/sa-634_delete_data
git push luveen testDeleteDataFailsOnProductionTier() {
git push luveen sa-634_delete_data
git rebase -i master
git push -f luveen sa-634_delete_data
git l
git s
git diff
gc -am"Update release notes"
git rebase -i master
git l
git push -f luveen sa-634_delete_data
gp && w
gp && w
cd utility-data-import-job
go master
git pull origin master
git pull opower master
go -b da-1966_up_report_libs
git diff
gc -am"[DA-1966] Update report-libs dependency version to 4.12"
git push luveen da-1966_up_report_libs
mcis -e
mci -o -e
cd ../site-service/site-server/
ll
tailf log/bluepill.log 
..
git s
mcis -o -e
mcis -o -e -rf site-server:
mcis -o -e -rf :site-server
cd site-server
./start.sh 
curl -X DELETE "http://localhost:8230/sites/delete/ZOK1"
./stop.sh 
./start.sh 
./stop.sh 
./start.sh 
curl -X DELETE "http://localhost:8230/sites/delete/ZOK1"
curl -X DELETE "http://localhost:8230/sites/ZOK1"
./stop.sh 
mcis -o -e
./start.sh 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
git s
git diff | subl
git diff origin/master | subl
git s
gc -am"Delete works"
..
mcis -o -e
git s
cd site-server
./stop.sh 
./start.sh 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
..
mcis -o -e
cd site-server/
./stop
./stop.sh 
./start.sh 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
cd ../site-db/
mysql -uroot -D site -A < db/test_data.sql 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
..
mcis -o -e
cd site-server/
./stop.sh 
./start.sh 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
./stop.sh 
..
mcis -o -e
-
./start.sh 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
git s
rm -rf ../atlassian-ide-plugin.xml .bundle/
git s
gc -am"Done"
git l
git rebase master
git rebase -i master
git l
gc --amend
git l
git push luveen sa-669_delete_data
git remotes
git remote add luveen https://github.va.opower.it/luveen-wadhwani/site-service
git remotes
git push luveen sa-669_delete_data
mci -o -e
gits
git s
git diff origin/master | subl
gc -am"Updates"
git rebase mastert
git rebase master
git rebase -i master
git push -f luveen sa-669_delete_data
..
mcis -o 0e
mcis -o -e
mcis -o -e -rf :site-server
-
./stop.sh 
./start.sh
..
git diff | subl
mci -o -e
cd site-server/
./stop.sh 
./start.sh 
./stop.sh 
./start.sh 
git diff | subl
gc -am"Changes from CR round 1 on e-s-c PR"
git push luveen sa-669_delete_data
mci -o -e
..
mci -o -e
cd site-server/
./stop.sh 
./start.sh 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
git s
rm ../atlassian-ide-plugin.xml
git s
git diff | subl
gc -am"Changes after e-s-c PR review feedback round 2"
git push luveen sa-669_delete_data
git s
..
git l
dpdv001
gp && w
dpdv001
gp && w
-
...
cd site-server/
tailf log/bluepill.log 
cd ../site-db/
mysql -uroot -Dsite -A < db/test_data.sql 
...
-
..
gc -am"Update to latest e-s-c"
go master
git pull origin master
go sa-669_delete_data
git rebase master
git rebase -i master
git l
git push -f luveen sa-669_delete_data
mysql -Dsite -uroot -A
mysql -uroot -Dsite -A < site-db/db/test_data.sql 
tailf site-server/log/bluepill.log 
cd ~/.m2/repository/com/opower/site-server/0.1.8-SNAPSHOT/
ll
rm *.jar
ll
...
rm -rf  entity-services-common-server/0.1.23-SNAPSHOT/
cd entity-services-common-server/
ll
we
w
cd site-service/site-server
tailf log/bluepill.log 
gp && w
cd site-service
git s
git diff
gc -am"CR feedback round 1 - part 1"
mysql -uroot -Dsite -A
mysql -uroot -Dsite -A < site-db/db/test_data.sql 
mysql -uroot -Dsite -A
cd ../report-libs
git s
git diff
gc -am"Fix tests"
git l
go master
git pull origin master
go da-1905_skip_if_transition
git rebase master
git rebase -i master
git push luveen da-1905_skip_if_transition-1
git push luveen da-1905_skip_if_transition:da-1905_skip_if_transition-1
git push luveen :da-1905_skip_if_transition-1
git push luveen :da-1905_skip_if_transition
git push luveen da-1905_skip_if_transition
mysql
mysql -uroot -D site -A
go master
git pull origin master
cd ../site-service
mysql -uroot -A < site-db/db/schema-local.ddl 
mysql -uroot -A -Dsite < site-db/db/test_data.sql 
mysql -uroot -A
cd site-db/db/
mysql -u root -D site < test_data.sql 
mysql -u root < schema-local.ddl 
mysql -u root -D site < test_data.sql 
mysql -uroot -Dsite
w
cd entity-sync-job/
git pull origin master
go -b sa-669_move_entity_sync_dao
dbdv002
dbdv001
mysql -h dev-service-db-1006.va.opower.it -Dspac -uspac
mysql -h dev-service-db-1006.va.opower.it -Dspac -uspac -P
mysql -h dev-service-db-1006.va.opower.it -Dspac -uspac -p
dbdv001
ssh dev-service-db-1006
mysql -h dev-service-db-1006.va.opower.it -Dspac -uspac -p
dbdv002
dbdv001
cd ../site-service/site-server
./stop.sh 
cd ..
mysql -A -Dsite -uroot < site-db/db/test_data.sql 
mysql -A -Dsite -uroot
mysql -A -Dsite -uroot < site-db/db/test_data.sql 
dpdv001
cd ../customer-service
git pull origin master
git pull opower master
cd ../account-service/
git pull origin master
subl pom.xml 
cd ../readstream-service/
git pull origin master
git pull opower master
subl pom.xml 
gp && w
gp && w
cd entity-services-common/
git s
go -b sa-669_fix_tier
mci -o -e
gc -am"[SA-669] Use tier full name instead of short name"
git push luveen sa-669_fix_tier
cd ../site-service
cd site-server
mcis -o -e
./start.sh 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
./stop.sh 
./start.sh 
curl -X DELETE "http://localhost:8230/sites/ZOK1"
cd ../../entity-s
cd ../../entity-services-common/
dbdv001
dpdv001
mysql -h dev-service-db-1006.va.opower.it -D site -A -p
dbdv001
ssh dev-service-1013.va.opower.it
mysql -u root -D site -A
ssh dev-service-1013.va.opower.it
mysql -h dev-service-db-1006.va.opower.it -D site -uspac -A -p
ssh dev-service-db-1006.va.opower.it
ssh dev-service-1013.va.opower.it
dbdv002
dbdv001
ssh dev-service-db-1006.va.opower.it
mysql -h dev-service-db-1006.va.opower.it
mysql -h dev-service-db-1006.va.opower.it -u spac
ssh dev-service-db-1006.va.opower.it
..
cd site-service/site-server/log/
tailf site-server.log 
tailf bluepill.log 
subl bluepill.log 
tailf logstash.log 
tailf bluepill.log 
jps -lm
ps aux | grep java
tailf bluepill.log 
...
..
cd entity-services-common/
mcis -o -e
git s
mcis -o -e
mcis -o -e -rf entity-services-common-server:
mcis -o -e -rf :entity-services-common-server
mcis -o -e
mcis -o -e -rf :entity-services-common-server
git s
git diff | subl
git s
gc -am"Stuffs are working"
mci -o -e
mci -o e
mci -o -e
mci -o -e -rf :entity-services-common-server
git s
gc -am"Update release notes; fix checkstyle"
git l
git rebase master
git rebase -i master
git l
git push luveen sa-780_watermark
git push -f luveen sa-780_watermark
git s
gc -am"CR feedback round 1"
git push luveen sa-780_watermark
git s
gc -am"rename test class"
git rebase master
git rebase -i master
git push luveen sa-780_watermark
git push -f luveen sa-780_watermark
gc -am"CR feedback round 2"
mci -o -e
mci -o -e -rf :entity-services-common-server
git s
git l
gc -am"merge w CR round 2"
git rebase master
git rebase -i master
git l
git push -f luveen sa-780_watermark
mci -o -e
mci -o -e -rf :entity-services-common-server
git s
gc -am"Removed unused deps"
git l
git push luveen sa-780_watermark
git s
gp && w
-
gp && w
-
cd entity-services-common/
mcis -o -e
mysql -u root
mcis -o -e
mysql -u root
mysql -u root -D site -A
cd ../site-service
cd site-db
mysql -u root < schema-local.ddl 
mysql -u root < db/schema-local.ddl 
mysql -u root -D site -A
mysql -u root -A
subl /etc/my.cnf 
find / -iname "*.ibd"
sudo find / -iname "*.ibd"
gp && w
gp && w
-
cd entity-services-common/
mcis -o -e
mysql -u root
mcis -o -e
mysql -u root
mysql -u root -D site -A
cd ../site-service
cd site-db
mysql -u root < schema-local.ddl 
mysql -u root < db/schema-local.ddl 
mysql -u root -D site -A
mysql -u root -A
subl /etc/my.cnf 
find / -iname "*.ibd"
sudo find / -iname "*.ibd"
mysql -u root -D site -A
ll /usr/local/mysql-percona-5.1.45-10/var/site_test
sudo ll /usr/local/mysql-percona-5.1.45-10/var/site_test
mysql -u root -D site -A
ll /usr/local/mysql-percona-5.1.45-10/var/site_test/site
sudo ll /usr/local/mysql-percona-5.1.45-10/var/site_test/site
sudo ll /usr/local/mysql-percona-5.1.45-10/var/site_test
sudo find /usr/local/mysql* -iname "mysql.server"
sudo cd /usr/local/mysql-percona-5.1.45-10/share/mysql
sudo mysql.server stop
sudo ./mysql.server stop
cd /usr/local/mysql-percona-5.1.45-10/share/mysql
mysql.server stop
./mysql.server stop
sudo ./mysql.server stop
ps aux | grep mysql
ll /usr/local/mysql-percona-5.1.45-10/libexec
ll /usr/local/mysql-percona-5.1.45-10/libexec/mysqlmanager 
/usr/local/mysql-percona-5.1.45-10/libexec/mysqlmanager 
/usr/local/mysql-percona-5.1.45-10/libexec/mysqlmanager stop
/usr/local/mysql-percona-5.1.45-10/libexec/mysqlmanager start
/usr/local/mysql-percona-5.1.45-10/libexec/mysqld
sudo /usr/local/mysql-percona-5.1.45-10/libexec/mysqld

sudo ll /usr/local/mysql-percona-5.1.45-10/var/site_test
cd /usr/local/mysql-percona-5.1.45-10/var/site_test
sudo cd /usr/local/mysql-percona-5.1.45-10/var/site_test
sudo mv site* ~/Desktop
sudo mv * ~/Desktop
ll
mysql -D site_test -A
-
mysql -u root -D site_test -A
-
ll
sudo cd /usr/local/mysql-percona-5.1.45-10/var/site_test
sudo cd /usr/local/mysql-percona-5.1.45-10/var
gp
bash_refresh 
sudo su -
gp && w
cd entity-s
cd entity-services-common/
git s
git diff
git l
gc -am"Remove todo "
go master
git pull origin master
go sa-780_watermark
git rebase master
git rebase --continue
ga release_notes.txt
git rebase --continue
git rebase -i master
mci -o -e
git l
zkServer start
git l
git push -f luveen sa-780_watermark
dpdv001
go master
git pull origin master
mcis -o -e
dpdv091
dpdv001
git pull origin master
zkServer start
mysql -u root -D site -A
curl -X DELETE "http://localhost:8230/sites/ZOK1"
zkServer start
zkServer restart
mysql -u root -D site -A
cd ../site-service
mysql -e site-db/db/schema-local.ddl 
mysql < site-db/db/schema-local.ddl 
mysql -u root < site-db/db/schema-local.ddl 
mysql -u root -A -D site
mysql -u root -A < site-db/db/schema-local.ddl
mysql -u root -A -D site
mysql -u root -A < site-db/db/test_data.sql 
mysql -u root -D site < site-db/db/test_data.sql 
cd ../report
git pull origin master
mcis -o -e
mcis -e
cd ../svnwork/clients/cnpo
mcis -e
cd trunk/working/
svn up
mcis -e
-
w
cd report
ll
gp && w
curl http://localhost:8080/api/v1/echo
mysql -u root -D site_test -A
mysql -u root -D site -A
cd customer-service
git l
git s
mci -o -e
cd customer-server
java -jar target/customer-server-0.1.9-SNAPSHOT.jar server src/main/resources/local.yml
java -jar target/customer-server-*-SNAPSHOT.jar server src/main/resources/local.yml
git s
gc -am"update e-s-c dep"
git l
..
git s
git diff
git s
gc -am"update e-s-c dep"
git s
git l
go master
git pull origin master
git pull opower master
go sa-780_watermark
git rebase master
git rebase -i master
git push -f luveen sa-780_watermark
cd ../site-service/site-server/log/
tailf bluepill.log 
cd ../../../report-libs
git pull origin master
mcis -oe
mcis -e
cd ../report
mjr_debug cnpo -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081 -Dautopatch.readOnly=true
MVN_OFFLINE=-o mjr_debug cnpo -Djetty.port=8081
cd ../site-service
go master
git pull origin master
go sa-780_watermark-1
mcis -o -e
cd site-server
./start.sh 
./stop.sh 
..
git s
gc -am"Random clientId and clientSecret keys"
git push luveen sa-780_watermark-1
git s
gc -am"Remove duplicated javadoc"
git push luveen sa-780_watermark-1
cd ../customer-service
cd customer-server
java -jar target/customer-server-*-SNAPSHOT.jar server src/main/resources/local.yml
..
mcis -U -e
cd ../entity-services-common/
git pull origin master
mcis -o -e
mcis -U -e
mcis -o -e
go norefs-release_notes
go -b norefs-release_notes
gc -am"[NO-REFS] Fix release notes"
git push luveen norefs-release_notes
mysql -u root -D account -A
gp && w
dbdv001
gp && w
-
mci -o -e
mci -o -e -rf :site-db
git diff | subl
git s
git l
gc -am"[SA-780] Add site server endpoint to retrieve sync high watermark"
git push luveen sa-780_watermark-1
mci -o -e
git s
gc -am"Update e-s-c dep"
git l
git rebase master
git rebase -i master
git l
git s
gc -am"update e-s-c dep"
git rebase master
git rebase -i master
git l
git push luveen sa-780_watermark-1
git push -f luveen sa-780_watermark-1
cd site-server
./start.sh 
./stop.sh 
..
mcis -o -e
-
./start.sh 
./stop.sh 
-
mcis -o -e
-
./start.sh 
./stop.sh 
-
mcis -o -e
-
./start.sh 
./stop.sh 
-
mcis -o -e
-
./start.sh 
./stop.sh 
-
mcis -o -e
mci -o -e
-
./start.sh 
-
./stop.sh 
-
mci -o -e
mcis -o -e
-
./start.sh 
-
git s
git diff | subl
git l
gc -am"CR feedback round 1"
git push luveen sa-780_watermark-1
cd site-server
..
mvn -o -e test -Dtest=testCreateClient
mvn -o -e test -Dtest=testCreateClient -DfailIfNoTests=false
mvn -o -e test -Dtest=TestSiteResource#testCreateClient -DfailIfNoTests=false
git s
git l
gc -am"Add back resource interface annotations to allow client creation"
git push luveen sa-780_watermark-1
w
git clone https://github.va.opower.it/eng-main/scrapi.git'
git clone https://github.va.opower.it/eng-main/scrapi.git
cd scrapi
rvm install ruby-1.9.3-p385
bundle install
go -b sa-782_sync_endpoint
go master
gb -D sa-782_sync_endpoint
go -b sa-782_watermark
cd ../site-service
git s
mvn -o -e test -Dtest=TestSiteResource#testCreateClient -DfailIfNoTests=false
cd site-server
./stop.sh 
..
mcis -o -e
-
./start.sh 
./stop.sh 
..
mcis -o -e
-
./start.sh 
cd ..
mysql < site-db/db/test_data.sql 
mysql -uroot -D site -A < site-db/db/test_data.sql 
git s
git diff | subl
cd site-server/
./stop.sh 
..
mci -o -e
cd site-server
..
mcis -o -e
-
./start.sh
./stop.sh 
..
mci -o -e
mci -o -e -rf :site-db
mvn test -o -e
mci -o -e
cd site-server
./start.sh 
..
git diff | subl
gc -am"Remove Jersey annotations from resource impl"
git push luveen sa-780_watermark-1
cd site-server
./stop.sh 
...
cd scrapi/
dpdv001
gc -am"Initial pass - no unit tests, untested"
cd ../account-service
git l
go master
git pull origin master
go sa-780_watermark
git rebase master
git rebase -i master
mysql -u root < account-db/db/schema-local.ddl 
git s
gc -am"[SA-780] Add account server endpoint to retrieve sync high watermark"
go master
git pull origin master
go sa-780_watermark
mcis -U -e
cd account-server/
java -jar target/account-server-0.1.11-SNAPSHOT.jar server src/main/resources/local.yml
git push luveen sa-780_watermark
..
mcis -o -e
mcis -U -e
pwd -P
mcis -U -e
rm -rf ~/.m2/repository/com/opower/rest-params/*
ll ~/.m2/repository/com/opower/rest-params/*
ll ~/.m2/repository/com/opower/rest-params
mcis -o -e
mcis -e
mcis -o -e
mcis -e
git s
git diff | subl
gc -am"Update e-s-c dep"
mci -o -e
git diff 
gc -am"update report table name"
git s
git l
git rebase master
git rebase -i master
git push -f luveen sa-780_watermark
go master
git pull origin master
git l
git merge --no-ff $ git l
* 0c15f8d [SA-780] Add site server endpoint to retrieve sync high watermark
*   42113c0 Merge branch 'update_secrets'
|| * 9aa684f Updating client_secrets now that hashing+salting has been implemented in the authorization service.
|/
*   e3d908f Merge pull request #61 from matthew-greenfield/archmage_0_4_1_upgrade_ISP_1333
|| * 7befa51 [ISP-1333] Adding client credentials for the Site Service client.
git merge --no-ff sa-780_watermark_fix
git l
gb -l
go sa-780_watermark
cd account-server/
java -jar target/account-server-0.1.11-SNAPSHOT.jar server src/main/resources/local.yml
gc -am"CR feedback round 1"
git push luveen sa-780_watermark
..
git l
git push luveen sa-780_watermark
git l
go master
git pull origin master
go sa-780_watermark
git rebase master
git rebase -i master
git l
git push -f luveen sa-780_watermark
dbdv001
gp && w
-
cd log
tailf bluepill.log 
...
gc -am"depend on latest e-s-c"
git push luveen sa-780_watermark-1
git rebase master
git rebase -i master
git l
git push -f luveen sa-780_watermark-1
go master
git pull origin master
git l
git reset HEAD^
git s
git l
go -b sa-780_watermark_fix
git rebase master
gc -am"[SA-780] Add site server endpoint to retrieve sync high watermark"
git rebase master
git l
go master
git merge sa-780_watermark_fix
git l
git merge --no-ff sa-780_watermark_fix
git l
git reset HEAD^
go -b sa-780_watermark_fix_1
gc -am"[SA-780] Add site server endpoint to retrieve sync high watermark"
go master
git l
git merge --no-ff sa-780_watermark_fix
git l
git push -f origin master
git l
go -b sa-780_fake_uuids
gc -am"[SA-780] Use fake client ID/secret UUIDs for local service instance"
git push luveen clientId: 00000000-0000-0000-0000-000000000000
git push luveen sa-780_fake_uuids
git l
cd svnwork/clients/cnpo/trunk/working/
mcis -o -e
mysql -D report -A
mysql -u root -D report -A
mysql -u root -A
mysql -u root -D cnpo_report -A
mysql -u root -D cnpo_import -A
mysql -u root -D poseur -A
dbdv001
w
cd scrapi/
l
ll
cd scrapi-server/
l
l bin/
bin/scrapi 
bin/scrapi generate
bin/scrapi generate sync_high_watermark_1
bin/scrapi generate sync_high_watermark_1 SyncHighWatermark1Endpoint
bin/scrapi run
mcis -o -e
bin/scrapi run
w
cd account-service/account-server/
..
mcis -o -e
mcis -o -e -rf :account-server
cd account-server/
java -jar target/account-server-*-SNAPSHOT.jar server src/main/resources/local.yml
..
mcis -U -e
-
java -jar target/account-server-*-SNAPSHOT.jar server src/main/resources/local.yml
rm -rf ~/.m2/repository/com/opower/rest-*
ll ~/.m2/repository/com/opower/rest-*
..
git diff | subl
git diff origin/master | subl
cd account-server
java -jar target/account-server-*-SNAPSHOT.jar server src/main/resources/local.yml
rm -rf target/*
java -jar target/account-server-0.1.11-SNAPSHOT.jar server src/main/resources/local.yml
..
-
java -jar target/account-server-0.1.11-SNAPSHOT.jar server src/main/resources/local.yml
..
mvn dependency:tree
mvn -o dependency:tree
cd account-server
java -jar target/account-server-0.1.11-SNAPSHOT.jar server src/main/resources/local.yml
gp && w
cd scrapi/scrapi-server/
bin/scrapi run
..
mcis -o -ee
mcis -o -e
mcis -e
-
bin/scrapi run
mysql -u root
bin/scrapi run
mysql -u root
mysql -u root -p
sudo mysql -u root -p
create_local_dbs 
bin/scrapi run
mvn -o -Ddemo -DCONFIG_DOMAIN=local -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
..
mcis -o -e
-
mvn -o -Ddemo -DCONFIG_DOMAIN=local -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
mvn -o -Ddemo -DCONFIG_DOMAIN=local -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run -Dexec.args="-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005"
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -Ddemo -DCONFIG_DOMAIN=local -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005' mvn -o -Ddemo -DCONFIG_DOMAIN=local -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
..
mcis -o -e
-
mcis -o -e
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005' mvn -o -Ddemo -DCONFIG_DOMAIN=local -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -Ddemo -DCONFIG_DOMAIN=local -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -Dpge -DCONFIG_DOMAIN=local.dev.dc6 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=pge  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -Dpge -DCONFIG_DOMAIN=local.dev.dc6 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=pge  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -Ddemo -DCONFIG_DOMAIN=local.dev.dc6 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
echo $LOCAL_PORT
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -DLOCAL_PORT=58045 -Ddemo -DCONFIG_DOMAIN=local.dev.dc6 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -DCONFIG_DOMAIN=local.dev.dc6 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
bin/scrapi run demo
rmysql
echo $LOCAL_PORT
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
subl bin/scrapi 
telnet 58045
telnet localhost
telnet localhost 58045
rmysql
telnet localhost 58045
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
rmysql
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
mcis -o -e
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
rmysql
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
rmysql
mcis -o -e
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
rmysql
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
rmysql
telnet localhost 58045
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
rmysql
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
rmysql
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
dbdv001
gp && w
type tsql
gp && w
adb
brew install adb
/Users/luveen.wadhwani/Downloads/Android/ADB-Install-Mac.sh 
cd ~/Downloads/Android/
/Users/luveen.wadhwani/Downloads/Android/ADB-Install-Mac.sh 
adb list
/usr/bin/adb reboot bootloader
sudo ./ADB-Install-Mac.sh 
./ADB-Install-Mac.sh 
subl ADB-Install-Mac.sh 
./ADB-Install-Mac.sh 
sudo mv Mac/adb_Mac /usr/bin/adb
cd Mac/
sudo mv adb_Mac /usr/bin/adb
..
./ADB-Install-Mac.sh 
adb reboot bootloader
fastboot devces
fastboot devices
sudo fastboot devices
sudo fastboot oem get_identifier_token
sudo fastboot flash unlocktoken ~/Downloads/Unlock_code.bin 
adb reboot bootloader
sudo fastboot devices
..
sudo fastboot flash recovery recovery-clockwork-6.0.4.8-endeavoru.img
adb sideload cm-10.2.1-endeavoru.zip
adb sideload gapps-jb-20130813-signed.zip 
adb push update.zip /storage/sdcard0
cd /Users/luveen.wadhwani/Downloads/cm-10.2.1-endeavoru
sudo fastboot flash boot boot.img 
cd /Volumes/MY_PASSPORT
adb sideload cm-11-20141007-NIGHTLY-endeavoru.zip 
adb devices
sudo adb devices
fastboot devices
sudo fastboot devices
cd ~/Downloads/ && sudo fastboot flash recovery recovery-clockwork-6.0.4.8-endeavoru.img
-
adb sideload cm-11-20141007-NIGHTLY-endeavoru.zip 
sudo fastboot devices
sudo fastboot flash boot boot.img 
adb reboot recovery
sudo adb reboot bootloader
fastboot devices
sudo fastboot devices
adb sideload pa_gapps-stock-4.4.3-20140608-signed.zip 
cd /Users/luveen.wadhwani/Downloads
fastboot devices
sudo fastboot devices
adb sideload NAK_r19.apk 
adb install NAK_r19.apk 
sudo adb install NAK_r19.apk 
adb install Android_L_Keyboard.apk 
gp && w
zkServer start
gp && w
-
cd ../customer-db/db
mysql -Dcustomer -u root < test_data.sql 
...
cd customer-server/log/
tailf customer-server.log 
lsof | grep 5005
netstat -ap | grep 5005
netstat -a | grep 5005
netstat -pntl | grep 5005
lsof -n -i4TCP:5005 | grep LISTEN
sudo lsof -n -i4TCP:5005 | grep LISTEN
ps aux | grep 34330
zkServer restart
zkCli
gp && w
dbdv001
cd scrapi/scrapi-server/
mvn test -DfailIfNoTests=false -Dtest=IntTestEntitySyncHighWatermarkJdbcDAO
mvn -o -e test -DfailIfNoTests=false -Dtest=IntTestEntitySyncHighWatermarkJdbcDAO
mci -o -e -DfailIfNoTests=false -Dtest=IntTestEntitySyncHighWatermarkJdbcDAO
mvn -o -e clean verify -DfailIfNoTests=false -Dtest=IntTestEntitySyncHighWatermarkJdbcDAO
mvn -o -e clean verify -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO
mvn -o -e verify -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO -DskipTests
mvn -o -e verify -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO -DskipTests=true
mvn -o -e test -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO
mvn -o -e verify -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005' mvn -o -e verify -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -e verify -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -e clean verify -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO
MAVEN_OPTS='-Xmx1024m -XX:MaxPermSize=768m -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -e clean verify -Dit.test=IntTestEntitySyncHighWatermarkJdbcDAO
git s
gc -am"Working with tests"
git diff origin/master | subl
git s
ga src/test/java/opower/api/endpoint/sync_high_watermark/TestSyncHighWatermarkEndpoint.java
git diff origin/master | subl
gc -am"add TestSyncHighWatermarkEndpoint"
git l
git rebase master
git rebase -i master
git l
git push luveen sa-782_watermark
git remote add luveen https://github.va.opower.it/luveen-wadhwani/scrapi
git push luveen sa-782_watermark
..
gc --amend
git push luveen sa-782_watermark
git push -f luveen sa-782_watermark
git s
gc -am"CR feedback round 1"
git push luveen sa-782_watermark
cd scrapi-server
mci -o -e
..
mci -o -e
mci -o -e -rf :scrapi-server
cd scrapi-server && bin/scrapi run demo
rmysql
cd scrapi-server && bin/scrapi run demo
bin/scrapi run demo
mvn -o -e -Ddemo -DCONFIG_DOMAIN=local.dev.dc6.demo -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
rmysql
telnet localhost 58045
echo $LOCAL_PORT
mvn -o -e -Ddemo -DCONFIG_DOMAIN=local.dev.dc6.demo -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
mvn -o -e -Ddemo -DCONFIG_DOMAIN=local.dev.dc6.demo -DLOCAL_PORT=58045 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
rmysql
mvn -o -e -Ddemo -DCONFIG_DOMAIN=local.dev.dc6.demo -DLOCAL_PORT=58045 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
rmysql
telnet localhost 58045
mvn -o -e -Ddemo -DCONFIG_DOMAIN=local.dev.dc6.demo -DLOCAL_PORT=58045 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -e -Ddemo -DCONFIG_DOMAIN=local.dev.dc6.demo -DLOCAL_PORT=58045 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
rmysql
telnet localhost 58045
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -e -Ddemo -DCONFIG_DOMAIN=local.dev.dc6.demo -DLOCAL_PORT=58045 -Dpmd.skip=true -Dcheckstyle.skip=true  -Dclient=demo  jetty:run
cd ../../account-service/mcis -o -e
cd ../../account-service
mcis -o -e
go mastrer
go master
git pull origin master
mcis -o -e
cd account-server
java -jar target/account-server-*-SNAPSHOT.jar server src/main/resources/local.yml
gp && w
tsql
gp && w
dbdv001
type rmysql
zkC;o
zkCli
gp && w
cd entity-services-common/
go master
git pull origin master
go -b sa-780_date
cd ../site-service
mvn -o -e dependency:tree
cd site-server
mvn test -o -e
mci -o -e
mvn -o -e dependency:tree
..
mvn -o -e dependency:tree
mci -o -e
cd site-server && ./start.sh
cd ../site-db/db
mysql < test_data.sql 
mysql -u root -D site < test_data.sql 
zkServer restart
cd ../../site-server && ./stop.
./stop.sh
java -jar target/site-server-0.1.8-SNAPSHOT.jar server src/main/resources/local.yml
java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005 -jar target/site-server-0.1.8-SNAPSHOT.jar server src/main/resources/local.yml
-
cd ../../customer-server/log
tail...
...
cd site-server/log
tailf bluepill.log 
zkServer restart
curl -xPOST http://localhost:8231/tasks/register
man curl
curl -x POST http://localhost:8231/tasks/register
curl -XPOST 'http://localhost:8231/tasks/register'
curl -XPOST 'http://localhost:8221/tasks/register'
ifconfig
brew install zookeeper-digest
brew install scapy
cd /Users/luveen.wadhwani/Downloads/scapy-latest.zip.cpgz
cd ~/Downloads
wget scapy.net
sudo chmod +x scapy-latest.zip
sudo ./scapy-latest.zip 
sudo sh scapy-latest.zip 
mv scapy-latest.zip /usr/local/bin/scapy
sudo scapy
brew install tcpdump
curl -XPOST 'http://localhost:8231/tasks/register'
curl -XPOST 'http://localhost:8221/tasks/register'
sudo easy_install python-pcapy
sudo easy_install pcapy
sudo pip install python-pcapy
sudo pip install pcapy
sudo pip install --allow-external pcapy
sudo pip --allow-external install pcapy
sudo pip install "http://corelabs.coresecurity.com/index.php?module=Wiki&action=attachment&type=tool&page=Pcapy&file=pcapy-0.10.8.tar.gz"
sudo scapy
sudo pip install dnet
python --version
wget http://libdnet.googlecode.com/files/libdnet-1.12.tgz
tar xzf libdnet-1.12.tgz 
cd libdnet-1.12/
./configure
make
sudo make install
cd python
sudo brew install python2.5
brew install python2.5
brew install python-2.5
brew
brew update
brew search python2.5
brew search python-2.5
brew search "python 2.5"
python setup.py install
sudo python setup.py install
wget http://dfn.dl.sourceforge.net/sourceforge/pylibpcap/pylibpcap-0.6.2.tar.gz
tar xfz pylibpcap-0.6.2.tar.gz
ll
...
tar xfz pylibpcap-0.6.2.tar.gzwgetr
wget
wget -O pylibpcap-0.6.2.tar.gz wget http://dfn.dl.sourceforge.net/sourceforge/pylibpcap/pylibpcap-0.6.2.tar.gz
tar xzf pylibpcap-0.6.2.tar.gz 
wget -O pylibpcap-0.6.2.tar.gz http://dfn.dl.sourceforge.net/sourceforge/pylibpcap/pylibpcap-0.6.2.tar.gz
tar xzf pylibpcap-0.6.2.tar.gz 
cd pylibpcap-0.6.2/
sudo python setup.py install
python `python -c "import pimp; print pimp.__file__"` -i readline
sudo python `python -c "import pimp; print pimp.__file__"` -i readline
scapy
ifconfig
cd ..
unzip scapy-latest.zip 
cd scapy-2.2.0/
sudo python setup.py install
ifconfig
zkCli
w
cd scrapi/
cd scrapi-server
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
rmysql
telnet localhost 58045
MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005' mvn -o -DLOCAL_PORT=58045 -Ddemo -Dpmd.skip=true -Dcheckstyle.skip=true -DCONFIG_DOMAIN=local.dev.dc6.demo -Dclient=demo  jetty:run
gp && w
cd customer-service
go master
git pull origin master
git pull opower master
mcis -oe
mcis -o -e
cd customer-server
java -jar target/customer-server-0.1.12-SNAPSHOT server src/main/resources/local.yml
java -jar target/customer-server-0.1.12-SNAPSHOT.jar server src/main/resources/local.yml
gp && w
-
w
git clone https://github.com/phunt/zookeeper-digest.git
cd zookeeper-digest/
ll
sudo chmod +x zookeeper-digest.py 
sudo ./zookeeper-digest.py -i en0 --servers "localhost:2181" --show -r site-server-zk-dump.txt
ll
subl zookeeper-digest.py 
sudo ./zookeeper-digest.py -i en0 --servers "localhost:2181" --show -r site-server-zk-dump.txt
subl zookeeper-digest.py 
sudo ./zookeeper-digest.py -i en0 --servers "localhost:2181" --show -r site-server-zk-dump.txt
sudo ./zookeeper-digest.py -i en0 --servers "localhost:2181" --show
w
cd scrapi/
git diff | subl
git l
gc -am"CR feedback round 2"
git push luveen sa-782_watermark
gp && w
curl -XPOST http://localhost:8241/tasks/register
cd account-service/account-server/src/main/resources/
ll
subl local.yml 
curl -XPOST http://localhost:8211/tasks/register
cd ../../../..
cd account-db/db
mysql -u root -D account < test_data.sql 
subl test_data.sql 
w
cd customer-service/customer-db/db
subl test_data.sql 
gp && w
cd /Library/LaunchDaemons/
ll
mv com.opower.mysqld.plist ~/Desktop/
sudo mv com.opower.mysqld.plist ~/Desktop/
ps -e pid,command | grep mysql
ps -eo pid,command | grep mysql
sudo kill -9 11968
ps -eo pid,command | grep mysql
sudo kill -9 12119
gp && w
gp && w
gp && w
-
java -jar target/site-server-*-SNAPSHOT.jar server src/main/resources/local.yml
gp && w
mysql -u root -D site
mysqld
whereis mysqld
which mysqld
which mysql
ll /usr/local/mysql
ll /usr/local/mysql-percona-5.1.45-10/share/mysql/
ll /usr/local/mysql-percona-5.1.45-10/var/
sudo ll /usr/local/mysql-percona-5.1.45-10/var/
sudo ll /usr/local/mysql-percona-5.1.45-10/libexec/mysqld
/usr/local/mysql-percona-5.1.45-10/libexec/mysqld
sudo /usr/local/mysql-percona-5.1.45-10/libexec/mysqld
/usr/local/mysql-percona-5.1.45-10/libexec/mysqld
ll /Library/LaunchDaemons/com.opower.mysqld.plist 
subl /Library/LaunchDaemons/com.opower.mysqld.plist 
ps -eo pid,command | grep mysqld
mysql
kill -9 8272
ps -eo pid,command | grep mysqld
mysql
/usr/local/mysql/bin/mysqld_safe --user=mysql
sudo /usr/local/mysql/bin/mysqld_safe --user=mysql
ps -eo pid,command | grep mysqld
kill -9 11148
ps -eo pid,command | grep mysqld
kill -9 11348
kill -9 11248
sudo kill -9 11248
ps -eo pid,command | grep mysqld
sudo kill -9 11342
ps -eo pid,command | grep mysqld
gp && w
-
java -jar target/customer-server-*-SNAPSHOT.jar server src/main/resources/local.yml
gp && w
zkServer restart
mysql
mysql -u root
gp && w
man fsck
mysql
mysql -u root
zkCli
tailf /var/log/asl
ls -lat /var/log/asl/
tailf /var/log/asl/2014.10.09.G80.asl
mysql
sudo ls /usr/local/mysql-percona-5.1.45-10/var/
sudo tailf /usr/local/mysql-percona-5.1.45-10/var/lwadhwani.local.err
sudo touch /usr/local/mysql-percona-5.1.45-10/share/mysql/english/errmsg.sys
sudo touch -f /usr/local/mysql-percona-5.1.45-10/share/mysql/english/errmsg.sys
sudo ll /usr/local/mysql-percona-5.1.45-10/share/mysql/
sudo tailf /usr/local/mysql-percona-5.1.45-10/var/lwadhwani.local.err
cd customer-service
cd customer-server/
java -jar target/customer-server-*-SNAPSHOT.jar server src/main/resources/local.yml
bundle update
gp && w
gp && w
dbdv001
gp && w
gp && w
cd scrapi
go master
git pull origin master
gp && w
bc
cd site-service
git l
brew install node
brew postinstall node
sudo brew postinstall node
npm install -g tessel
sudo npm install -g tessel
sudo npm install -g colors
sudo npm install -g colors -v
sudo npm install -g colors --version=0.6.0-1
sudo npm install colors
sudo npm update http-proxy
w
gp && w
cd /Users/luveen.wadhwani/Downloads/firmware v1.2
cd /Users/luveen.wadhwani/Downloads/firmware\ v1.2/
make
ll
unzip IRcaptured.zip 
subl NA1/na000.dat
gp && w
zkServer start
gp && w
cd site-service
git s
go site-server/src/main/resources/local.yml
go master
git pull origin master
gp && w
git alias --list
git list alias
git config alias
git config
git config --list
cd customer-service
git s
go customer-server/src/main/resources/local.yml
go master
git pull origin master
go -b sa-829_doc
git s
git diff
gc -am"[SA-829] Update documentation"
git push luveen sa-829_doc
gc -am"Add non-local"
git rebase master
git rebase -i master
git push -f luveen sa-829_doc
go master
git pull origin master
go -b sa-842_upgrade_esc
git s
git diff
mci -o -e
mcis -e
mci -o -e
gc -am"[SA-842] Upgrade e-s-c to 0.1.31"
git push luveen sa-842_upgrade_esc
gc -am"Update release notes line"
git rebase master
git rebase -i master
git push -f luveen sa-842_upgrade_esc
go master
git pull origin master
git l
git pull origin master
gp && w
cd site-service
go -b sa-829_doc
git s
git diff
gc -am"[SA-829] Update documentation"
git push luveen sa-829_doc
git s
gc -am"Add non-local"
git rebase master
git rebase -i master
git push -f luveen sa-829_doc
go master
git pull origin master
go -b sa-845_upgrade_libs
mci -o -e
git diff
gc -am"[SA-845] Upgrade e-s-c and customer-service to get r-c-t Hystrix timeout increase"
git push luveen sa-845_upgrade_libs
go master
git pull origin master
git l
git pull
git l
go sa-845_upgrade_libs
git rebase master
git rebase --continue
git l
git push -f luveen sa-845_upgrade_libs
git l
go master
git pull origin master
gp && w
git diff
qgc -am"[SA-829] Update documentation"
git push luveen sa-829_doc
git rebase master
git rebase -i master
git push -f luveen sa-829_doc
go master
git pull origin master
mysqld_safe 
sudo mysqld_safe 
gp && w
-
git s
git diff src/main/resources/local.yml
go src/main/resources/local.yml
..
git s
go master
git stash
git pull origin master
go -b sa-829_doc
git stash apply
git s
git diff
gc -am"[SA-829] Update documentation"
git push luveen sa-829_doc
gc -am"Add non-local"
git rebase master
git rebase -i master
git push -f luveen sa-829_doc
go master
git pull origin master
go -b sa-844_upgrade_libs
mcis -e && mci -o -e
git diff
gc -am"[SA-844] Upgrade e-s-c and customer-service to get r-c-t Hystrix timeout increase"
git push luveen sa-844_upgrade_libs
go master
git pull origin master
cat pom.xml 
gp && w
-
git diff
gc -am"[SA-834] Create dev app hosts"
git push luveen sa-834_provision
git remote add luveen https://github.va.opower.it/luveen-wadhwani/site-attribute-service
git push luveen sa-834_provision
git diff
gc -am"Correct db name"
git rebase master
git rebase -i master
git push -f luveen sa-834_provision
git s
go master
git pull origin master
go sa-834_provision
git l
w
cd archmage
git stash
go master
git pull origin master
w
cd site-attribute-service/
git s
git diff
gc -am"PR feedback round 1; update config to resemble entity services"
git push luveen sa-834_provision
git s
git l
w
git clone https://github.va.opower.it/opower/provision-service
cd provision-service
git remote add luveen https://github.va.opower.it/luveen-wadhwani/provision-service
go -b isp-905_processing_start_time
emptytrash 
gp && w
cd provision-service/
git s
git diff
gc -am"[ISP-905] Update processing started timestamp correctly"
git push luveen isp-905_processing_start_time
gp && w
tell application "System Events"
    set hiddenFilesDisplayStatus to do shell script "defaults read com.apple.finder AppleShowAllFiles"
    set hiddenFilesNewDisplayStatus to "NO"
    if hiddenFilesDisplayStatus is "NO" then;         set hiddenFilesNewDisplayStatus to "YES";     end if;      do shell script "defaults write com.apple.finder AppleShowAllFiles " & hiddenFilesNewDisplayStatus
    do shell script "killall Finder"
gp && w
adb
adb devices
cd ~/Downloads/
adb install -r PwnMyMoto-1.4.3-Verizon-IHateToolKits.apk 
fastboot oem get_unlock_data
ssh dev-service-1016.va.opower.it
gp && w
ssh site-service@dev-service-1013.va.opower.it
gp && w
ssh site-attribute-service@dev-service-1019.va.opower.it
gp && w
ssh site-attribute-service@dev-service-1016.va.opower.it
curl provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data  
'{
    "@type": "unprovision_app",
    "deployment_groups":["dev-group"],
    "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca",
    "id":"2c01f01e-d738-496a-924d-80d70deabe5f",
    "app_hosts": ["dev-service-1016.va.opower.it"],
    "tier": "dev"
}'
curl provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data '{
    "@type": "unprovision_app",
    "deployment_groups":["dev-group"],
    "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca",
    "id":"2c01f01e-d738-496a-924d-80d70deabe5f",
    "app_hosts": ["dev-service-1016.va.opower.it"],
    "tier": "dev"
}'
curl -v provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data '{
    "@type": "unprovision_app",
    "deployment_groups":["dev-group"],
    "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca",
    "id":"2c01f01e-d738-496a-924d-80d70deabe5f",
    "app_hosts": ["dev-service-1016.va.opower.it"],
    "tier": "dev"
}'
curl -v provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data '{
    "@type": "unprovision_app",
    "deployment_groups":["dev-group"],
    "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca",
    "id":"2c01f01e-d738-496a-924d-80d70deabe5f",
    "app_hosts": ["dev-service-1016.va.opower.it"],
    "tier": "dev"
}'
curl -v provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data \'{
    "@type": "unprovision_app",
    "deployment_groups":["dev-group"],
    "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca",
    "id":"2c01f01e-d738-496a-924d-80d70deabe5f",
    "app_hosts": ["dev-service-1016.va.opower.it"],
    "tier": "dev"
}'
curl provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data '{
    "@type": "unprovision_app",
    "deployment_groups":["dev-group"],
    "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca",
    "id":"2c01f01e-d738-496a-924d-80d70deabe5f",
    "app_hosts": ["dev-service-1016.va.opower.it"],
    "tier": "dev"
}'
curl provision-service.va.opower.it:8090/provision -XPOST -H"Content-Type:application/json" --data '{"@type": "provision_app", "deployment_groups":["archmage-dev"],"app_hosts":["dev-service-1019.va.opower.it", "dev-service-1017.va.opower.it"], "db_hosts":["dev-db-service-1002.va.opower.it"], "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca", "tier_configuration":{"tier":"dev", "admin_port": 8241, "service_port": 8240}}'
curl provision-service.va.opower.it:8090/provision -XPOST -H"Content-Type:application/json" --data '{"@type": "provision_app", "deployment_groups":["archmage-dev"],"app_hosts":["dev-service-1019.va.opower.it", "dev-service-1018.va.opower.it"], "db_hosts":["dev-db-service-1002.va.opower.it"], "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca", "tier_configuration":{"tier":"dev", "admin_port": 8241, "service_port": 8240}}'
curl provision-service.va.opower.it:8090/provision -XPOST -H"Content-Type:application/json" --data '{"@type": "provision_app", "deployment_groups":["archmage-dev"],"app_hosts":["dev-service-1019.va.opower.it", "dev-service-1015.va.opower.it"], "db_hosts":["dev-db-service-1002.va.opower.it"], "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca", "tier_configuration":{"tier":"dev", "admin_port": 8241, "service_port": 8240}}'
curl provision-service.va.opower.it:8090/provision -XPOST -H"Content-Type:application/json" --data '{"@type": "provision_app", "deployment_groups":["archmage-dev"],"app_hosts":["dev-service-1019.va.opower.it", "dev-service-1014.va.opower.it"], "db_hosts":["dev-db-service-1002.va.opower.it"], "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca", "tier_configuration":{"tier":"dev", "admin_port": 8241, "service_port": 8240}}'
curl provision-service.va.opower.it:8090/provision -XPOST -H"Content-Type:application/json" --data '{"@type": "provision_app", "deployment_groups":["archmage-dev"],"app_hosts":["dev-service-1019.va.opower.it", "dev-service-1013.va.opower.it"], "db_hosts":["dev-db-service-1002.va.opower.it"], "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca", "tier_configuration":{"tier":"dev", "admin_port": 8241, "service_port": 8240}}'
curl provision-service.va.opower.it:8090/provision -XPOST -H"Content-Type:application/json" --data '{"@type": "provision_app", "deployment_groups":["archmage-dev"],"app_hosts":["dev-service-1019.va.opower.it", "dev-service-1020.va.opower.it"], "db_hosts":["dev-db-service-1002.va.opower.it"], "app_id":"713211f3-1b1d-4fd8-8123-0eecb04eebca", "tier_configuration":{"tier":"dev", "admin_port": 8241, "service_port": 8240}}'
emptytrash 
subl ~/.path 
subl ~/.bashrc
subl ~/.bash_profile 
subl ~/.exports 
bash_refresh 
gp
gp && w
dpdv001
ssh site-attribute-service@dev-service-1016.va.opower.it
ssh --verbose site-attribute-service@dev-service-1016.va.opower.it
ssh -v site-attribute-service@dev-service-1016.va.opower.it
ssh -v site-attribute@dev-service-1016.va.opower.it
cd provision-service/
gb -l
git pull origin master
go isp-905_processing_start_time
git s
gc -am"Add test case"
go master
mcis -o -e
go -b isp-905_processing_start_time
go isp-905_processing_start_time
mcis -o -e
mvn test -Dtest=ProvisioningProcessorTest#testRunSafelyUpdatesProcessingStartedTimestamp
mvn test -Dtest=ProvisioningProcessorTest#testRunSafelyUpdatesProcessingStartedTimestamp -DfailIfNoTests=false
mvn -o -e test -Dtest=ProvisioningProcessorTest#testRunSafelyUpdatesProcessingStartedTimestamp -DfailIfNoTests=false
gp && w
cd svnwork/clients/
ll
..
cd clients/
ll
....
w
ll
ll clients*
ls clients*
for c in $(ls clients*); do echo $c; donw
for c in $(ls clients*); do echo $c; done
for c in $(ls clients*); do echo $c; done | subl
whereis python
cd ~/Documents/development/
cd 4.14
chmod +x parse_opentsdb.py 
./parse_opentsdb.py aepo
chmod +x parse_opentsdb.py 
./parse_opentsdb.py aepo
./parse_opentsdb.py clients.txt 
gp && w
emptytrash 
gp && w
android sdk
hax
type hax
cd /Volumes/MY_PASSPORT/Documents/Reading/
mkdir Gunnerkrigg\ Court
for i in $(seq -f "%05g" 10 15); do   echo $i; done
for i in $(seq -f "%08g" 70 70); do   echo $i; done
for i in $(seq -f "%08g" 500 1443); do echo "http://www.gunnerkrigg.com/comics/$i"; done
for i in $(seq -f "%08g" 500 1443); do echo "http://www.gunnerkrigg.com/comics/$i.jpg"; done
for i in $(seq -f "%08g" 500 1443); do echo; echo "Downloading page $i..."; wget --retries=3 --progress=dot --randomwait -o $i.jpg "http://www.gunnerkrigg.com/comics/$i.jpg"; echo "Finished downloading page $i."; echo; done
for i in $(seq -f "%08g" 500 1443); do echo; echo "Downloading page $i..."; wget --tries=3 --progress=dot --randomwait -o $i.jpg "http://www.gunnerkrigg.com/comics/$i.jpg"; echo "Finished downloading page $i."; echo; done
for i in $(seq -f "%08g" 500 1443); do echo; echo "Downloading page $i..."; wget --tries=3 --progress=dot --randomwait -o $i.jpg http://www.gunnerkrigg.com/comics/$i.jpg; echo "Finished downloading page $i."; echo; done
for i in $(seq -f "%08g" 500 1443); do echo; echo "Downloading page $i..."; wget --tries=3 --progress=dot --randomwait -o $i.jpg -- http://www.gunnerkrigg.com/comics/$i.jpg; echo "Finished downloading page $i."; echo; done
for i in $(seq -f "%08g" 500 1443); do echo; echo "Downloading page $i..."; wget --tries=3 --progress=dot -o $i.jpg -- http://www.gunnerkrigg.com/comics/$i.jpg; echo "Finished downloading page $i."; echo; done
gp && w
man wget
gp && w
cd /Volumes/MY_PASSPORT/Documents/Reading/
for i in $(seq -f "%08g" 500 1443); do echo; echo "Downloading page $i..."; wget --progress=dot -o $i.jpg -- http://www.gunnerkrigg.com/comics/$i.jpg; echo "Finished downloading page $i."; echo; done
mkdir Gunnerkrigg\ Court
cd Gunnerkrigg\ Court/
for i in $(seq -f "%08g" 500 1443); do echo; echo "Downloading page $i..."; wget --progress=dot -o $i.jpg -- http://www.gunnerkrigg.com/comics/$i.jpg; echo "Finished downloading page $i."; echo; done
gp && w
cd site-attribute-service/
git s
go site-attribute-db/db/schema.ddl
git pull origin master
git remotes
git remote remove opower
git remote add chris https://github.va.opower.it/chris-barrett/site-attribute-service
git fetch chris
go SA-837-server-PR
git l
mcis -o -e
emptytrash 
go master
git s
go site-attribute-db/db/schema.ddl
git pull origin master
git s
git diff
cd ../provision-service/
git s
gc -am"[ISP-905] Update processingStartedTimestamp"
go master
git pull origin master
gp && w
man seq
type deploy_start 
type deploy_stop 
ssh site-attribute-service@dev-service-1016.va.opower.it
gp && w
ssh dev-service-db-1002.va.opower.it
ssh dev-db-service-1002.va.opower.it
mysql -h dev-db-provision-1001.va.opower.it -D provision -u provisi_patch -p
mysql -h dev-db-provision-1001.va.opower.it -D provision -u provisi_patch -A -p
mysql -h dev-db-provision-1001.va.opower.it -D provision
mysql -h dev-db-provision-1001.va.opower.it -D provision -u provisi_patch
mysql -h dev-db-provision-1001.va.opower.it -D provision -u provisi_patch -p
gp && w
cd provision-service/
gb -l
git pull origin master
\
go isp-905_processing_start_time
mvn -o -e test -DfailIfNoTests=false -Dtest=ProvisioningProcessorTest#testRunSafelyUpdatesProcessingStartedTimestamp
cd /Users/luveen.wadhwani/Library/Application\ Support/DeSmuME/0.9.10/States/
ll
..
ll
mv Battery Battery1
mv States States1
man ln
ln -s States ~/Dropbox/Documents/Gamesaves/Desmume/States
ll
ln -s ~/Dropbox/Documents/Gamesaves/Desmume/States States
ll
rm States
ln -s ~/Dropbox/Documents/Gamesaves/Desmume/States States
ll
ln -s ~/Dropbox/Documents/Gamesaves/Desmume/Battery Battery
ll
cp States1/Ghost\ Trick\ -\ Phantom\ Detective.ds1 ~/Dropbox/Documents/Gamesaves/Desmume/States
cd States
ll
gp && w
cd /code/data/batch/
ll
ll clients/
ll jobs/
rm -rf jobs/*
emptytrash 
mysql -h prod-db-service-1006.va.opower.it -D site_attribute -u site_attribute -A -p
mysql -h stage-db-service-1003.va.opower.it -D site_attribute -u site_attribute -A -p
curl provision-service.va.opower.it:8090/provision/70ce0a2f-e338-4d7f-90ca-946beb228c63
w
cd entity-services-common/
git pull origin master
mysql -h stage-db-service-1003.va.opower.it -D site_attribute -u site_attribute -A -p
ssh stage-db-service-1003.va.opower.it ls -l /var/lib/ mysql
ssh stage-db-service-1003.va.opower.it ls -l /var/lib/mysql
gp && w
-
git s
curl dev-service-1030.va.opower.it:8080/oauth2/clients -HContent-Type:application/json --data '{ "name": "customer-attribute-service Client", "description": "This OAuth2 client is used for accessing other services from customer-attribute-service", "contact_email": "servicesapis@opower.com", "should_generate_secret": true, "grant_types": ["client_credentials"] }'
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{
  "@type": "provision_db",
  "app_id": "13a06c70-422d-444a-84a9-7f5a2d9b1ed6",
  "dataset_max_gigabytes": 10,
  "db_host": "dev-db-service-1004.va.opower.it"
}'
curl stage-service-1018.va.opower.it.va.opower.it:8080/oauth2/clients -HContent-Type:application/json --data '{ "name": "customer-attribute-service Client", "description": "This OAuth2 client is used for accessing other services from customer-attribute-service", "contact_email": "servicesapis@opower.com", "should_generate_secret": true, "grant_types": ["client_credentials"] }'
curl stage-service-1018.va.opower.it:8080/oauth2/clients -HContent-Type:application/json --data '{ "name": "customer-attribute-service Client", "description": "This OAuth2 client is used for accessing other services from customer-attribute-service", "contact_email": "servicesapis@opower.com", "should_generate_secret": true, "grant_types": ["client_credentials"] }'
curl prod-service-1021.va.opower.it:8080/oauth2/clients -HContent-Type:application/json --data '{ "name": "customer-attribute-service Client", "description": "This OAuth2 client is used for accessing other services from customer-attribute-service", "contact_email": "servicesapis@opower.com", "should_generate_secret": true, "grant_types": ["client_credentials"] }'
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{
  "@type": "provision_db",
  "app_id": "13a06c70-422d-444a-84a9-7f5a2d9b1ed6"",
  "dataset_max_gigabytes": 10,
  "db_host": "prod-db-service-1006.va.opower.it"
}'
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{ "@type": "provision_db", "app_id": "13a06c70-422d-444a-84a9-7f5a2d9b1ed6", "dataset_max_gigabytes": 10, "db_host": "prod-db-service-1006.va.opower.it" }'
emptytrash 
git s
git diff
for h in 1 2 3 4; do ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; for h in 1 2 3 4; do ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
for h in $(seq 1 4); do ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; for h in 1 2 3 4; do ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
for h in $(seq 1 4); do ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
for h in 1 3 4 ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
for h in 1 3 4; ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
for h in (1 3 4); ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
for h in 1 3 4; ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
for h in 1 3 4; do ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
for h in 1 3 4; do echo $h...; ssh stage-db-service-100$h.va.opower.it ls -l /var/lib/mysql; done
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{
  "@type": "provision_db",
  "app_id": "713211f3-1b1d-4fd8-8123-0eecb04eebca",
  "dataset_max_gigabytes": 10,
  "db_host": "stage-db-service-1003.va.opower.it"
}'
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{
  "@type": "provision_db",
  "app_id": "13a06c70-422d-444a-84a9-7f5a2d9b1ed6",
  "dataset_max_gigabytes": 10,
  "db_host": "stage-db-service-1003.va.opower.it"
}'
git diff
gc -am"[SA-869] Provision dev, stage s-a-s dbs and client credentials"
go master
git pull origin master
go sa-856_provision_dbs
git rebase master
git rebase --continue
git rebase -i master
git diff origin/master
mysql -h dev-db-service-1004.va.opower.it -u customer_attribu -p
mysql -h dev-db-service-1004.va.opower.it -u customer_attribute -p
curl provision-service.va.opower.it:8090/provision/42a74af1-6a0c-4b97-a22d-e2f6431f2548
mysql -h dev-db-service-1004.va.opower.it -u customer_attribute -p
mysql -h dev-db-service-1004.va.opower.it -u customer_attribu -p
curl provision-service.va.opower.it:8090/provision/51781df8-07fc-4dc0-a718-19a374e63c28
mysql -h stage-db-service-1003.va.opower.it -u site_attribute -p
gp && w
ssh dev-service-db-1006.va.opower.it
mysql -h dev-service-db-1006.va.opower.it -Dspac -u spac --password=zWvE5b2OTi
gp && w
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -p
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -D site_attribute -p
mysql -h stage-db-service-1003.va.opower.it -u site_attribute -D site_attribute -p
mysql -h stage-db-service-1003.va.opower.it -u customer_attribu -D customer_attribu -p
cd site-attribute-service/
git s
gc -am"Add readme and release notes"
git rebase master
git rebase -i master'
git rebase -i master
git s
gc -am"Update release note"
git rebase master
git rebase -i mas,ter
git rebase -i master
git push -f sa-856_provision_dbsluveen 
git push -f luveen sa-856_provision_dbs
git s
git diff
gc -am"Fix typo"
git rebase master
git rebase -i maser
git rebase -i master
git push -f luveen sa-856_provision_dbs
git s
go master
go -b sa-882_provision_dbs
git s
ga customer-attribute-server/src/**/*
git s
gc -am"[SA-882] Add customer-attribute-service db config for all tiers"
git push luveen sa-882_provision_dbs
go master
git pull origin master
gb -l
go sa-856_provision_dbs
git l
git rebase master
git rebase -i master
git push -f luveen sa-856_provision_dbs
go master
git pull origin master
gb -l
go sa-882_provision_dbs
git rebase master
git rebase -i master
git l
gc -am"Add release note"
git rebase master
git rebase -i master
git push -f luveen sa-882_provision_dbs
go master
git pull origin master
git l
go sa-882_provision_dbs
git l
mysql -h stage-db-service-1003.va.opower.it -u customer_attribu -D customer_attribu -p
git s
gc -am"Correct credentials"
git push luveen sa-882_provision_dbs
git pull origin master
git l
git reset HEAD^
git l
gc -am"Correct credentials"
go master
git pull origin master
git s
rm -rf customer-attribute-server/config/
git pull origin master
go sa-882_provision_dbs
git rebase master
git rebase --continue
git s
ga customer-attribute-server/src/main/resources/prod.yml customer-attribute-server/src/main/resources/stage.yml
git rebase --continue
git s
git l
git push -f luveen sa-882_provision_dbs
openssl rand -base64 32
git s
git diff
git s
gc -am"[SA-869,SA-882] Add prod root/read/write db users; c-a-s schema-local.ddl"
git rebase master
git rebase -i master
git l
git push -f luveen sa-882_provision_dbs
git l
which jasypt
git s
git l
git diff
git rebase master
gc -am"Update release notes"
git rebase master
git -i rebase master
git rebase -i master
git l
git push -f luveen sa-882_provision_dbs
git l
git reset HEAD^
go -b sa-882_fix_log
git rebase master
git diff
git l
gc -am"[SA-869,SA-882] Add c-a-s db config; read/write/root prod db users"
git rebase master
git rebase -i master
go master
git merge --no-ff sa-882_fix_log
git l
git push -f origin master
git l
git pull origin master
git l
git log
git l
git log git log --pretty=format:"%C(yellow)%h%Creset %C(cyan)%an%Creset %s %Cgreen(%cr) %C(red)%d" --graph"
git log git log --pretty=format:"%C(yellow)%h%Creset %C(cyan)%an%Creset %s %Cgreen(%cr) %C(red)%d" --graph
git log --pretty=format:"%C(yellow)%h%Creset %C(cyan)%an%Creset %s %Cgreen(%cr) %C(red)%d" --graph
mysql -h prod-db-service-1006.va.opower.it -u customer_attribu -D customer_attribu -p
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -D site_attribute -p
ssh prod-db-service-1006.va.opower.it ls -l /var/lib/mysql
ssh prod-service-1017.va.opower.it
ssh prod-service-1017.va.opower.it "grep -n -C65 --color=always "ERROR" provision-server-2014-11-11.log | grep --color=always -C65 "prod-db-service-1006""
ssh prod-service-1017.va.opower.it
gp && w
curl provision-service.va.opower.it:8090/provision/7c2dadff-244b-457e-8015-d8d2cf21a2ec
cd site-attribute-service/
git diff origin/master
go master 
git pull origin master
go sa-856_provision_dbs
git rebase master
git rebase -i master
git diff origin/master
git push luveen sa-856_provision_dbs
go master
git l
git pull origin master
git l
subl ~/.gitconfig
git l
subl ~/.gitconfig
git log --pretty=format:"%C(yellow)%h%Creset %C(cyan)%an%Creset %s %Cgreen(%cr) %C(red)%d" --graph
bash_refresh 
gp
git l
git l1
git pull origin master
gp && w
cd account-service/
git pull origin master
ssh dev-db-service-1006.va.opower.it 'mysql -e -D -u spac -PzWvE5b2OTi "show full processlist"'
ssh -v dev-db-service-1006.va.opower.it 'mysql -e -D -u spac -PzWvE5b2OTi "show full processlist"'
ssh -v dev-service-db-1006.va.opower.it 'mysql -e -D -u spac -PzWvE5b2OTi "show full processlist"'
ssh -v dev-service-db-1006.va.opower.it 'mysql -e -D -u spac --password=zWvE5b2OTi "show full processlist"'
ssh -v dev-service-db-1006.va.opower.it 'mysql -e -D spac -u spac --password=zWvE5b2OTi "show full processlist"'
ssh -v dev-service-db-1006.va.opower.it 'mysql -e -D spac "show full processlist"'
ssh -v dev-service-db-1006.va.opower.it 'mysql -e \'show full processlist\''
ssh -v dev-service-db-1006.va.opower.it mysql -e 'show full processlist'
ssh dev-service-db-1006.va.opower.it mysql -e 'show full processlist'
ssh stage-db-service-1001.va.opower.it "uname -a; echo; echo; df -h"
ssh stage-db-service-1001.va.opower.it "uname -a; echo; echo; cat /proc/cpuinfodf -h"
ssh stage-db-service-1001.va.opower.it "uname -a; echo; echo; cat /proc/cpuinfo; echo; echo; df -h"
ssh dev-service-db-1006.va.opower.it "uname -a; echo; echo; cat /proc/cpuinfo; echo; echo; df -h"
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{ "@type": "provision_db", "app_id": "13a06c70-422d-444a-84a9-7f5a2d9b1ed6", "dataset_max_gigabytes": 10, "db_host": "prod-db-service-1006.va.opower.it" }'
curl provision-service.va.opower.it:8090/provision/87ddc661-afa8-4d8b-97f0-204ae516f10c
cd ../site-attribute-service/
git pull origin master
git remotes
git fetch chris
go SA-894-metadata-endpoints-PR
go master
cd customer-attribute-db/db/
ll
git pull origin master
ll
cat schema-local.ddl
...
git l
git diff 9c9a126 97c5bcf
git diff 9c9a126 4bd0e62
git diff 9c9a126 78fcaf7
git diff 9c9a126 78fcaf7 | subl
git s
ll customer-attribute-db/db/
ga customer-attribute-db/db site-attribute-db/db/schema.ddl
git diff customer-attribute-server/src/main/resources/base.yml
git s
git reset customer-attribute-db/db/schema-local.ddl customer-attribute-db/db/schema.ddl site-attribute-db/db/schema.ddl
git s
go -b sa-882_add_unstaged_files
ga customer-attribute-db/db/ customer-attribute-server/src/main/resources/base.yml customer-attribute-server/src/main/resources/local.yml customer-attribute-server/src/main/resources/logging.yml site-attribute-db/db/schema.ddl
git s
git diff
git diff origin/master
gc -am"[SA-882] Add files that were unstaged in log fix"
git push luveen sa-882_add_unstaged_files
gb -l
git s
gc -am"CR feedback round 1"
git push luveen sa-882_add_unstaged_files
go master
git remotes
git remote add geoff https://github.va.opower.it/geoff-the/site-attribute-service
git fetch geoff
go sa-882_add_unstaged_files
git s
git l
go master
git pull origin master
go sa-882_add_unstaged_files
git rebase master
git rebase -i master
git l
git push -f luveen sa-882_add_unstaged_files
go master
git pull origin master
go -b sa-882_rename_test_schema
git diff
gc -am"[SA-882] Rename test schema"
git push luveen sa-882_rename_test_schema
go master
git l
git pull origin master
git l
gp && w
ssh prod-service-1017.va.opower.it
gp && w
chmod +x account_stage_proclist.rb 
ruby account_stage_proclist.rb 
gp && w
mysql -h prod-db-service-1006.va.opower.it -u customer_attribu -D customer_attribu --password=RJXe1XTi
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -D site_attribute --password=P0dGuaXg
mysql -h prod-db-service-1017.va.opower.it -D provision_service -u provision_service -A --password=totes_provision!
mysql -h platform-db-001.va.opower.it -D provision -u provisi_patch -A --password=totes_provision
mysql -h prod-db-service-1006.va.opower.it -u customer_attribu -D customer_attribu --password=bAmBpvqL
mysql -h prod-db-service-1006.va.opower.it -u customer_attribu -D customer_attribu --password=RJXe1XTi
cd site-attribute-service
git pull origin master
go sa-882_rename_test_schema
git rebase master
git rebase -i master
git push luveen sa-882_rename_test_schema
git push -f luveen sa-882_rename_test_schema
git l
curl provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data '{
    "@type": "unprovision_app",
    "app_id":"13a06c70-422d-444a-84a9-7f5a2d9b1ed6",
    "id":"fa31a290-7c9e-420a-8252-4333e3bce253",
    "app_hosts": ["prod-db-service-1006.va.opower.it"],
    "tier": "prod"
curl provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data '{
    "@type": "unprovision_app",
    "app_id":"13a06c70-422d-444a-84a9-7f5a2d9b1ed6",
    "id":"fa31a290-7c9e-420a-8252-4333e3bce253",
    "app_hosts": ["prod-db-service-1006.va.opower.it"],
    "tier": "prod"
}'
curl provision-service.va.opower.it:8090/provision -XDELETE -H"Content-Type:application/json" --data '{
    "@type": "unprovision_app",
    "app_id":"13a06c70-422d-444a-84a9-7f5a2d9b1ed6",
    "id":"fa31a290-7c9e-420a-8252-4333e3bce253",
    "app_hosts": ["prod-db-service-1006.va.opower.it"],
    "tier": "prod"
}'
curl provision-service.va.opower.it:8090/provision/fa31a290-7c9e-420a-8252-4333e3bce253
hostname
gp && w
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{ "@type": "provision_db", "app_id": "13a06c70-422d-444a-84a9-7f5a2d9b1ed6", "dataset_max_gigabytes": 10, "db_host": "prod-db-service-1006.va.opower.it" }'
curl provision-service.va.opower.it:8090/provision/d64a0dfa-3302-45cd-a39c-9d50b7165c1f
brew install knife
gem install knife
ssh prod-service-1017.va.opower.it
gp && w
cd site-service
git pull origin master
mci -e
mci -o -e -DskipTests=true
mci  -e -DskipTests=true
cd site-server/
cat ./start.sh 
./start.sh 
bundle install
./start.sh 
cat log/site-server.log 
tailf log/site-server.log 
subl log/site-server.log 
./stop.sh 
java -jar target/site-server-0.1.13-SNAPSHOT.jar server src/main/resources/local.yml 
zkServer start
java -jar target/site-server-0.1.13-SNAPSHOT.jar server src/main/resources/local.yml 
gp && w
-
cd ../site-db/
ll
cd db/
mysql -u root < schema-local.ddl 
mysql 
mysql -u root
mysqld
mysqld_safe
sudo mysqld_safe
gp && w
mysql -u root
gp && w
gp && w
gp && w
gp && w
mysql -h platform-db-001.va.opower.it -D provision -u provisi_patch -A --password=totes_provision
git clone https://github.va.opower.it/peter-budiono/site_attribute_service_test.git
cd site_attribute_service_test
./build.sh 
bash_refresh 
gp
./build.sh 
echo $PATH
rvm list
ruby -v
rvm install ruby-1.9.3
rvm reload
rvm upgrade
gp && w
mysql -h platform-db-001.va.opower.it -D provision -u provisi_patch -A --password=totes_provision
git clone https://github.va.opower.it/peter-budiono/site_attribute_service_test.git
cd site_attribute_service_test
./build.sh 
bash_refresh 
gp
./build.sh 
echo $PATH
rvm list
ruby -v
rvm install ruby-1.9.3
rvm reload
rvm upgrade
rvm upgrade ruby-1.9.2-p320 ruby-1.9.3-p392
gp && w
mysql -h platform-db-001.va.opower.it -D provision -u provisi_patch -A --password=totes_provision
git clone https://github.va.opower.it/peter-budiono/site_attribute_service_test.git
cd site_attribute_service_test
./build.sh 
bash_refresh 
gp
./build.sh 
echo $PATH
rvm list
ruby -v
rvm install ruby-1.9.3
rvm reload
rvm upgrade
rvm upgrade ruby-1.9.2-p320 ruby-1.9.3-p392
rvm ruby-1.9.3-p392
rvm install ruby-1.9.3-p392
rvm reinstall ruby-1.9.3-p392
rvm use ruby-1.9.3-p392
./build.sh 
rvm use ruby-1.9.2-p320
./build.sh 
emptytrash 
gp && w
gem install chef
rvm show
rvm get stable --auto-dotfiles
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
rvm get stable --auto-dotfiles
rvm show
subl ~/.bash_profile 
subl ~/.path 
subl ~/.bashrc
bash_refresh 
gp
rvm show
ls ~/\.*
subl ~/.bash_profile 
subl ~/.exports 
bash_refresh 
gp
rvm show
echo $PATH
rvm list
gem install chef
sudo gem install chef
knife
knife data bag show platform database | grep -A 10 customer-attribute-prod
ssh chef-2001.ca.opower.it
scp chef-2001.ca.opower.it:~/luveen_wadhwani.pem ~/.chef
subl ~/.chef/knife.rb
mkdir ~/.chef
ll ~/.chef 
ll ~/.chef/
cat ~/.chef
mv .chef luveen_wadhwani.pem
mkdir ~/.chef
mv luveen_wadhwani.pem ~/.chef
kitchen converge
knife data bag show platform database | grep -A 10 customer-attribute-prod
knife data bag show platform database
knife data bag delete platform database customer-attribute-prod
knife -V data bag delete platform database customer-attribute-prod
knife data bag show platform database
knife data bag edit platform database
mysql -h prod-db-service-1006.va.opower.it -u customer_attribu -D customer_attribu --password=RJXe1XTi
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -D site_attribute --password=P0dGuaXg
git clone https://github.va.opower.it/chef/data.git
mkdir chef
mv data chef
cd chef
cd data/
git remote add luveen https://github.va.opower.it/luveen-wadhwani/data
git fetch luveen
go patch-1
git l
...
mv chef $w
mv chef $workspace
git s
w
cd chef/data/
git s
gc -am"CR feedback round 1" 
git s
git push luveen patch-1
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{ "@type": "provision_db", "app_id": "13a06c70-422d-444a-84a9-7f5a2d9b1ed6", "dataset_max_gigabytes": 10, "db_host": "prod-db-service-1006.va.opower.it" }'
mysql -h prod-db-service-1006.va.opower.it -u customer_attribu -D customer_attribu --password=Wb7e0rAY
curl provision-service.va.opower.it:8090/provision/05a1a521-8071-4fa0-ab6a-fff8b8489499
mysql -h prod-db-service-1006.va.opower.it -u customer_attribu -D customer_attribu --password=Wb7e0rAY
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -D site_attribute --password=P0dGuaXg
...
cd provision-service/
git s
gc -am"Testing"
go master
git pull origin master
ssh prod-service-1017.va.opower.it
ssh prod-db-service-1006.va.opower.it
gp && w
gp && w
gp && w
gp && w
ssh qa-jenkins-slave-1009
ssh qa-jenkins-slave-1009 df -h
ssh qa-jenkins-slave-1008 df -h
ssh qa-jenkins-slave-1008 mysql -e 'SELECT table_schema "Data Base Name", sum( data_length + index_length )  "Database Size", sum( data_free ) "Free Space in MB" FROM information_schema.TABLES GROUP BY table_schema;'
ssh qa-jenkins-slave-1008 mysql -e 'SELECT table_schema \"Data Base Name\", sum( data_length + index_length )  \"Database Size\", sum( data_free ) \"Free Space in MB\" FROM information_schema.TABLES GROUP BY table_schema;'
ssh qa-jenkins-slave-1008
ssh qa-jenkins-slave-1009
mysql -e 'SELECT table_schema "Data Base Name", sum( data_length + index_length )  "Database Size", sum( data_free ) "Free Space in MB" FROM information_schema.TABLES GROUP BY table_schema;'
ssh qa-jenkins-slave-1005
ssh -v qa-jenkins-slave-1005
ssh -v qa-jenkins-slave-1005.va.opower.it
gp && w
gp && w
gp && w
gp && w
gp && w
cd account-service/
git pull origin master
go -b sa-904_stage_db
mysql -h stage-db-service-1003.va.opower.it -u account -D account --password=NUHlELK3
git s
gc -am"[SA-904] Update stage tier db config"
git s
git diff
gc -am"[NO-REFS] simplify zookeeper configuration"
git l
git push luveen sa-904_stage_db
mcis -o -e
cd account-server/
java -jar target/account-server-0.1.16-SNAPSHOT.jar server src/main/sources/dev.yml 
java -jar target/account-server-0.1.16-SNAPSHOT.jar server src/main/resources/dev.yml 
mysql -h stage-db-service-1003.va.opower.it -u account -D account --password=NUHlELK3
ssh stage-db-service-1003
ssh stage-db-service-1003.va.opower.it
ssh stage-service-1008.va.opower.it
gp && w
type deploy_st
type deploy_stop 
subl ~/.bash_profile 
subl ~/.aliases
subl ~/.functions
gp && w
ssh service-1015.va.opower.it
ssh stage-service-1015.va.opower.it
ssh readstream-service@stage-service-1015.va.opower.it
ssh readstream-service@stage-service-1007.va.opower.it
:q!
gp && w
ssh stage-service-1018.va.opower.it
cd "/code/svnwork/infrastructure/trunk/clean/machines/dev/home/build/bin/jasypt"
./encrypt.sh NUHlELK3
./encrypt.sh "NUHlELK3"
./encrypt.sh
./encrypt.sh input="NUHlELK3"
./encrypt.sh input="NUHlELK3" algorithm=SHA1
./digest.sh input="NUHlELK3" algorithm=SHA1
./encrypt.sh input="NUHlELK3" algorithm=SHA1
./encrypt.sh "input=NUHlELK3 algorithm=SHA1"
gp && w
type deploy_stop 
cd readstream-service/
go master
git pull origin master
cd readstream-server/
bundle install
cat ~/.rvmrc
ll ~/.rvm
rm -rf ~/.rvm
sudo rm -rf ~/.rvm
for x in `gem list --no-versions`; do echo gem uninstall $x -a -x -I; done
for x in `gem list --no-versions`; do gem uninstall $x -a -x -I; done
bash -s stable < <(curl -s https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
bash_refresh 
gp
rvm list
rvm get stable --auto-dotfiles
rvm list
bash_refresh && gp
rvm list
subl ~/.paths
subl ~/.path
subl ~/.exports 
bash_refresh && gp
echo $PATH 
cat ~/Downloads/kiji-bento-ebi/bin/kiji-env.sh
bash_refresh 
gp
 $PATH
subl ~/Downloads/kiji-bento-ebi/bin/kiji-env.sh
bash_refresh 
gp
echo $PATH
rvm list
rvm install 1.9.3-p392 --configure CC=/usr/local/bin/gcc-4.6
bundle install
deploy_stop staging
subl /Users/luveen.wadhwani/.rvm/gems/ruby-1.9.3-p392/gems/capistrano-nexus-0.1.6/lib/nexus/namespace/sensu.rb
type deploy_stop
cap staging deploy:stop
cap staging deploy:start
cap staging maintenance:delete
ssh stage-service-1015.va.opower.it
ssh stage-service-1013.va.opower.it
ssh stage-db-service-1003.va.opower.it
ssh readstream-service@stage-db-service-1003
ssh readstream-service@stage-service-1015.va.opower.it
ssh stage-service-1015.va.opower.it
ssh readstream-service@stage-service-1007.va.opower.it
ssh stage-service-1013.va.opower.it
mysql -h stage-db-service-1003.va.opower.it -D customer -u customer --password=IuTqA0CU
mysql -h stage-db-service-1003.va.opower.it -D readstream -u readstream --password=IuTqA0CU
ssh stage-service-1015.va.opower.it
cap staging maintenance:create
-
cap staging maintenance:create
cap staging deploy:stop
cap staging deploy:start
cap staging maintenance:delete
..
go -b sa-904_move_stage_db
git diff | subl
gc -am"[NO-REFS] simplify zookeeper configuration"
git s
gc -am"[SA-904] Update stage tier db config"
git s
git l
go master
git pull origin master
go sa-904_move_stage_db
git rebase master
git rebase -i master
git push luveen sa-904_move_stage_db
cd readstream-server/
bundle exec cap staging maintenance:create && bundle exec cap staging deploy:stop && sleep 40 && bundle exec cap staging deploy:start && sleep 40 && bundle exec cap staging maintenance:delete
bundle exec cap staging maintenance:create; bundle exec cap staging deploy:stop && sleep 40 && bundle exec cap staging deploy:start && sleep 40 && bundle exec cap staging maintenance:delete
...
cd site-service
git pull origin master
git s
rm -rf node_modules
cd site-servecr
bundle install
subl ~/.functions
bash_refresh && gp
deploy_stop staging
deploy_start staging
w
git clone https://github.va.opower.it/opower/authorization-service.git
ssh site-service@stage-service-1009.va.opower.it
cd site-service/site-server/
git s
git diff
go git s
git s
gc -am"[SA-904] Update stage tier db config"
git s
git diff | subl
gc -am"[NO-REFS] simplify zookeeper configuration"
git s
git l
git push luveen
git l
git reset HEAD~2
go -b sa-904_move_stage_db
git l
git s
git diff 
gc -am"[NO-REFS] simplify zookeeper configuration"
git s
git diff
gc -am"[SA-904] Update stage tier db config"
git l
git push luveen sa-904_move_stage_db
bash_refresh && gp
deploy_stop staging; echo Sleeping... && sleep 30; deploy_start staging
cd ..
go master
git pull origin master
git l
cd ../entity-sync-job
git pull origin master
go -b sa-904_move_staging_dbs
git s
git diff
gc -am"[SA-904] Update stage service db config; use plaintext passwords like prod"
git l
git push luveen sa-904_move_staging_dbs
git remotes
git remote add luveen https://github.va.opower.it/luveen-wadhwani/entity-sync-job
git push luveen sa-904_move_staging_dbs
ssh readstream-service@stage-service-1015.va.opower.it
ssh site-service@stage-service-1012.va.opower.it
ssh site-service@stage-service-1009.va.opower.it
dbqa001
ssh stage-service-1013.va.opower.it
ssh -v stage-service-1013.va.opower.it
ssh -v stage-service-1018.va.opower.it
apdv001
dpdv001
ssh customer-service@stage-service-1013.va.opower.it
cd site-service
git l
cd ../account-service/
git s
go master
git stash
go master
git pull origin master
go -b sa-904_enable_zookeeper
git stash apply
git diff
gc -am"[NO-REFS] Re-enable zookeeper"
git push luveen sa-904_enable_zookeeper
cd customer-service
git pull origin master
cd customer-server/
bundle install
deploy_stop staging && echo && echo Sleeping... && echo && sleep 40 && deploy_start staging
cd ..
go -b sa-904_move_staging_dbs
git s
git diff
gc -am"[SA-904] Update staging db config"
git figg
git diff
gc -am"[NO-REFS] Simplify zookeeper configuration"
git k
git l
git push luveen sa-904_move_staging_dbs
cd ../site-service
git s
cd ../customer-service
hi
cd customer-server
deploy staging
..
mcis -o -e
bundle exec cap nexus:upload_artifact
cd customer-server/
bundle exec cap nexus:upload_artifact
type deploy
deploy alpha
deploy staging
dodv001
dpdv001
gp && w
ssh customer-service@stage-service-1013.va.opower.it
ssh customer-service@dev-service-1009.va.opower.it
ssh customer-service@stage-service-1013.va.opower.it
gp && w
curl dev-service-1013.va.opower.it:8241/healthcheck
curl -XGET dev-service-1013.va.opower.it:8241/healthcheck
curl -XGET dev-service-1013.va.opower.it:8231/healthcheck
curl -XGET dev-service-1013.va.opower.it:8231/healthcheck | jsonpp
curl -XGET dev-service-1013.va.opower.it:8231/healthcheck | jsonpp | grep -A 4 "service-registry-connectivity"
chmod +x ~/Documents/development/entity_services_dev_zookeeper_check.sh 
~/Documents/development/entity_services_dev_zookeeper_check.sh 
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
nslookup apdv001
nslookup apdv001.va.opower.it
192.168.1.1:8080/PECO/syncHighWatermark
curl 192.168.1.1:8080/PECO/syncHighWatermark
curl https://api-dev.va.opower.it/v1/peco/syncHighWatermark
curl https://api-dev.va.opower.it/v1/cec/syncHighWatermark
curl -XGET https://api-dev.va.opower.it/v1/cec/syncHighWatermark
ssh weather-service@dev-service-5102.aws.opower.it
ssh -v weather-service@dev-service-5102.aws.opower.it
ssh -v dev-service-5102.aws.opower.it
ssh -v weather-service@dev-service-5102.aws.opower.it
ssh -v dev-service-5102.aws.opower.it
ssh  dev-service-5102.aws.opower.it
ssh -v -o NoStrictHostKeyChecking weather-service@dev-service-5102.aws.opower.it
ssh -v -o StrictHostKeyChecking=no weather-service@dev-service-5102.aws.opower.it
ssh prod-service-1017.va.opower.it
emptytrash 
gp && w
ssh weather-service@dev-service-5103.aws.opower.it
ssh weather-service@dev-service-5202.aws.opower.it
cd weather-service
git pull origin master
cd weather-serv
cd weather-server/
bundle install
bundle exec cap deploy:start
bundle exec cap deploy:start --hosts=dev-service-5202.aws.opower.it
HOST=dev-service-5202.aws.opower.it bundle exec cap deploy:start
HOSTS=dev-service-5202.aws.opower.it bundle exec cap deploy:start
gp && w
gp && w
git clone https://github.va.opower.it/eng-main/neighbor-selection-job.git
cd neighbor-selection-job/
go -b no-refs_declare_owners
git diff
gc -am"[NO-REFS] Establish Core Services as owner of this repo"
git remotes
git remote add luveen https://github.va.opower.it/luveen-wadhwani/neighbor-selection-job
git push luveen no-refs_declare_owners
go master
git pull origin master
cd ../provision-service/
go -b isp-1489_allocation_allowed
git diff
gc -am"[ISP-1489] Fail DB allocation requests on hosts where it isn't allowed"
git diff
gc -am"test case"
go master
git pull origin master
go isp-1489_allocation_allowed
git rebase master
git rebase -i master
git l
git push luveen isp-1489_allocation_allowed
git s
git diff
gc -am"remove extraneous lines"
git rebase master
git rebase -i master
git l
mcis -o -e && push -f luveen isp-1489_allocation_allowed
git push -f luveen isp-1489_allocation_allowed
git s
git diff
gc -am"Fix tests"
git rebase master
git rebase -i master
git push -f luveen isp-1489_allocation_allowed
ssh prod-service-1017.va.opower.it
emptytrash 
open /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/PopcornTime/
open $TMPDIR/Popcorn-Time
gp && w
emptytrash
gp && w
adb devices
adb shell pm setInstallLocation 2
adb start
adb start-server
adb devices list
adb devices -l
adb shell pm setInstallLocation 2
adb devices -l
adb shell pm setInstallLocation 2
adb shell pm set InstallLocation 2
adb shell pm set-install-location 2
emptytrash 
sudo emptytrash 
emptytrash 
youtube-dl/youtube-dl --format 'mp4' -o ~/Movies/Wings\ of\ Honneamise/%(title)s.mp4 
youtube-dl/youtube-dl --format 'mp4' -o '~/Movies/Wings\ of\ Honneamise/%(title)s.mp4'
emptytrash 
cd neighbor-selection-job/
reboot
sudo reboot
gp && w
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p -e'select count(*) from site'
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p -e'select count(*) from siteuse index (utility_code_uuid_uk) where utility_code like "PECO"'
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p -e"select count(*) from siteuse index (utility_code_uuid_uk) where utility_code like 'PECO'"
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p -e"select count(*) from siteuse index(utility_code_uuid_uk) where utility_code like 'PECO'"
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p -e"select count(*) from site where utility_code like 'PECO'"
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p -e"select count(*) from site_customer_history where utility_code like 'PECO'"
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p -e"select count(*) from site_service_point_history where utility_code like 'PECO'"
mysql -h prod-db-service-1005.va.opower.it -D account -u account_root -p -e"select count(*) from account where utility_code like 'PECO'"
mysql -h prod-db-service-1005.va.opower.it -D readstream -u readstream_root -p -e"select count(*) from readstream where utility_code like 'PECO'"
esj-cli -m run -t prod -c CEC
gp && w
emptytrash 
cd entity-sync-job/
gem install esj-cli --remote --source https://nexus.va.opower.it/nexus/content/repositories/opower-gems/
esj-cli -m run -t prod -c PECO
ssh prod-service-1010.va.opower.it
ssh prod-db-service-1005.va.opower.it
mysql -h prod-db-service-1005.va.opower.it -u site_root -D site -A --password=gSkR$0VG2I6pJA3q
apdv001
dpdv001
ssh prod-db-service-1005.va.opower.it
mysql -h prod-db-service-1005.va.opower.it
mysql -h prod-db-service-1005.va.opower.it -u site_root -D site -A --password=gSkR$0VG2I6pJA3q
mysql -h prod-db-service-1005.va.opower.it -u site_root -D site -A -p
dbdv002
dbdv001
gp && w
mysql cec_report -A < cec_esj_discrepancy.sql | sa-933_cec_discrepancy_data.txt
mysql cec_report -A < cec_esj_discrepancy.sql > sa-933_cec_discrepancy_data.txt
cd ~/Documents/development/4.16/SA-933/
mysql cec_report -A < cec_esj_discrepancy.sql > sa-933_cec_discrepancy_data.txt
type dbdv001
ssh dbdv001.va.opower.it mysql cec_report -A < cec_esj_discrepancy.sql > sa-933_cec_discrepancy_data.txt
ssh dbdv001.va.opower.it mysql cec_report -A -e 'select 1' > test.txt
cat test.txt 
ssh dbdv001.va.opower.it mysql -D cec_report -A -e 'select 1' > test.txt
ssh dbdv001.va.opower.it mysql -D cec_report -A -e 'desc customer' > test.txt
ssh dbdv001.va.opower.it mysql -D cec_report -A -e 'show tables' > test.txt
ssh dbdv001.va.opower.it "mysql -D cec_report -A -e 'show tables'" > test.txt
subl test.txt 
ssh dbdv001.va.opower.it "mysql -D cec_report -A -e 'select * from import_job order by id desc limit 1000'" | subl
ssh dbdv001.va.opower.it "for d in peco_report cec_report; do echo $d; echo ------------------; mysql -D $d -A -e 'select id, bundle_id, import_type_code, import_started_at, import_completed_at from import_job order by id desc limit 1000'; done" | subl
ssh dbdv001.va.opower.it 'for d in peco_report cec_report; do echo $d; echo ------------------; mysql -D $d -A -e \'select id, bundle_id, import_type_code, import_started_at, import_completed_at from import_job order by id desc limit 1000\'; done' | subl
ssh dbdv001.va.opower.it 'for d in (peco_report cec_report); do echo $d; echo ------------------; mysql -D $d -A -e \'select id, bundle_id, import_type_code, import_started_at, import_completed_at from import_job order by id desc limit 1000\'; done' | subl
ssh dbdv001.va.opower.it "for d in (peco_report cec_report); do echo $d; echo ------------------; mysql -D $d -A -e 'select id, bundle_id, import_type_code, import_started_at, import_completed_at from import_job order by id desc limit 1000'; done" | subl
gp && w
git clone https://github.va.opower.it/opower/sensu-opower-plugins.git
cd sensu-opower-plugins/
go master
git pull origin master
find . -iname spac_sync_check.rb -type f
subl ./lib/sensu-opower-plugins/checks/spac/spac_sync_check.rb
find . -iname config.ym -type f
find . -iname config.yml -type f
subl ./lib/sensu-opower-plugins/checks/spac/config/config.yml
curl -XGET 'api.va.opower.it/v1/peco/syncHighWatermark'
curl -XGET 'https://api.va.opower.it/v1/peco/syncHighWatermark
'
dbdv001
ssh dev-service-db-1006.va.opower.it
mysql -D spac -u spac -pzWvE5b2OTi -h dev-service-db-1006.va.opower.it
apdv001
ssh dev-service-db-1006.va.opower.it
dpdvo001
dpdv001
mysql -h prod-db-service-1005.va.opower.it -D site_root -u site -p -A
mysql -h prod-db-service-1005.va.opower.it -D site -u site_root -p -A
gp && w
dbdv001
ssh prod-service-1009
gp && w
ssh prod-bertha-worker-1018
cd site-service
git pull origin master
cd site-servcer
type deploy
deploy_stop prod && sleep 35 && deploy_start prod
deploy_stop production && sleep 35 && deploy_start production
gp && w
ssh -v sensu-1001.va.opower.it
gp && w
dbdv001
zkCli
zkCli -h
man zkCli
type zkCli
ll /usr/local/bin/zkCli
ssh dev-zookeeper-1001.va.opower.it
zkCli
ssh dev-zookeeper-1001.va.opower.it
ssh -v dev-zookeeper-1001.va.opower.it
zkCli dev-zookeeper-1001.va.opower.it
zkCli -server dev-zookeeper-1001.va.opower.it:2181
gp && w
brew install zkCli
brew install zookeeper-client
brew install zookeeper
gp && w
cd neighbor-selection-job/
git pull origin master
git log
cd bin/
ll
./run_remote -s dbdv001 -c aus -w database -o ALL
..
bin/run_remote -s dbdv001 -c aus -w database -o ALL
gp && w
-
ll
tailf target/logs/neighbor_selection_job_aus.log 
/code/youtube-dl/
cd /code/youtube-dl/
ll
./youtube-dl 
git pull origin master
git s
git stash
git pull origin master
./youtube-dl 
ll
bin/youtube-dl
sudo curl https://yt-dl.org/downloads/2014.12.16/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl
brew install youtube-dl
rm /usr/local/bin/youtube-dl 
brew link --overwrite youtube-dl
~
youtube-dl 
youtube-dl -o '~/Movies/TV Shows/Crash Course/Big History/%(index)s - %(title)s.mp4' --format 'mp4' https://www.youtube.com/playlist?list=PL8dPuuaLjXtMczXZUmjb3mZSU1Roxnrey
youtube-dl -o '~/Movies/TV Shows/Crash Course/Big History/%(title)s.mp4' --format 'mp4' https://www.youtube.com/playlist?list=PL8dPuuaLjXtMczXZUmjb3mZSU1Roxnrey
gp && w
gp && w
gp && w
gp && w
dbdv001
gp && w
gp && w
gp && w
cd neighbor-selection-job/
git remotes
git pull origin master
git fetch origin 
git fetch origin 
gitl
git l
go 4.16.x
git cherry-pick 94538f2
git l
go -b di-507_kill_logstash
git l
git push luveen di-507_kill_logstash
ssh prod-service-1032.va.opower.it
go master
cd ../sensu-opower-plugins/
git pull origin master
rm /code/sensu-opower-plugins/.git/refs/remotes/origin/master.lock
git pull origin master
go -b sa-872_site_attr_data_replication_alert
cd ../site-attribute-service/
go master
git pull origin master
cd ../rest-client-tools/
go master
git pull origin master
git s
git diff
git stash "[sa-829_temp] Putzing around to remove oauth2 token refresh TTL"
git stash save "[sa-829_temp] Putzing around to remove oauth2 token refresh TTL"
git pull origin master
cd ../sensu-opower-plugins/
git s
gc -am"[SA-872,SA-880] Initial version; pending s/c-a-s sync high watermark response format"
git push luveen sa-872_site_attr_data_replication_alert
git remotes
git remote add luveen //github.va.opower.it/luveen-wadhwani/sensu-opower-plugins
git push luveen sa-872_site_attr_data_replication_alert
git remote remove luveen
git remote add luveen https://github.va.opower.it/luveen-wadhwani/sensu-opower-plugins
git push luveen sa-872_site_attr_data_replication_alert
rvm versions
rvm list
gem install esj-cli --remote --source https://nexus.va.opower.it/nexus/content/repositories/opower-gems/
sudo gem install esj-cli --remote --source https://nexus.va.opower.it/nexus/content/repositories/opower-gems/
rvm list
rvm use ruby-1.9.3-p392
echo $PATH
sudo gem install esj-cli --no-ri --no-rdoc --install-dir . --remote --source https://nexus.va.opower.it/nexus/content/repositories/opower-gems/
esj-cli -m run -t qa -c xxx
gp && w
esj-cli -m run -t qa -i esj_cli_test_clients.txt 
cd /code/sensu-opower-plugins/
which esj-cli
sudo esj-cli -m run -t qa -i esj_cli_test_clients.txt
gp && w
cd site-attribute-service/
git pull origin master
gp && w
cd ~/Documents/development/5.2/SA-968_migrate_weather_service/
chmod +x update_clients.sh 
./update_clients.sh 
subl test_application.properties 
rm ~/Documents/development/5.2/SA-968_migrate_weather_service/test_application.properties
./update_clients.sh 
subl test_application.properties 
rm ~/Documents/development/5.2/SA-968_migrate_weather_service/test_application.properties
./update_clients.sh 
rm ~/Documents/development/5.2/SA-968_migrate_weather_service/test_application.properties
./update_clients.sh 
subl /code/clients/amp/src/main/resources/clientconfig/application.properties
./update_clients.sh 
subl /code/clients/tnb/src/main/resources/clientconfig/application.properties
chmod +x svn_status_clients.sh 
./svn_status_clients.sh 
./svn_status_clients.sh | subl
wget https://github.com/jeffkole/homebrew/blob/c989b89c30f0b91ecb3accc811f76ee0755dd70f/Library/Formula/svnmerge.rb
rm svnmerge.rb.html 
wget https://raw.githubusercontent.com/jeffkole/homebrew/c989b89c30f0b91ecb3accc811f76ee0755dd70f/Library/Formula/svnmerge.rb
brew install svnmerge.rb --debug --verbose
chmod +x svn_commit_clients.sh 
./svn_commit_clients.sh 
subl /code/clientssrc/main/resources/clientconfig/application.properties
subl /code/clients/aepo/src/main/resources/clientconfig/application.properties
chmod +x remove_line_from_clients.sh 
./remove_line_from_clients.sh 
./svn_status_clients.sh | subl
./update_clients.sh 
./remove_line_from_clients.sh 
./svn_status_clients.sh | subl 
./svn_status_clients.sh 
./svn_status_clients.sh | subl
./svn_commit_clients.sh 
gp && w
-
cd ../clients
cd aepo
svn info
cd ../../clients-parent/
wget https://nexus.va.opower.it/nexus/service/local/repositories/releases/content/com/opower/clients-parent/5.0.0/clients-parent-5.0.0.pom
ll
subl clients-parent-5.0.0.pom 
rm -rf *
cd ..
rm -rf clients-parent/
git clone https://github.va.opower.it/eng-main/clients-parent.git
cp clients-parent/pom.xml clients
cd clients
ll
for l in $(ls); do echo "<module>client-$l</module>"; done | subl
for l in $(ls); do echo "<module>$l</module>"; done | subl
gp && w
cd svnwork/clients/
cd ../../clients/
ll
for d in $(ls); do echo; echo "Updating $d..."; pushd $d && echo svn up && popd; echo "Updated."; echo; done
for d in $(ls); do echo; echo "Updating $d..."; pushd $d && svn up && popd; echo "Updated."; done
ll zok4
ll
cd ..
cd ues/
ll
svn up
..
for d in uic zok4 zok3 zok2 zok1 xxx2 xxx xewi xetx xesd xenm xend xemi xeco xcel wrve util vec wgl wmco; do echo; echo "Updating $d ..."; pushd $d && svn up && popd; echo "Updated."; done
subl /code/clients/aepo/src/main/resources/clientconfig/application.properties 
cd aepo
svn info
cd ..
svn co $R/main/clients/tnb/trunk tnb
cd tnb
svn st
svn diff
vi src/main/resources/clientconfig/application.properties
cat $_
c=`tail -c 1 src/main/resources/clientconfig/application.properties`
if [ "$c" != "" ]; then echo "no newline"; fi
echo $c
svn st
cd ../aepo/
svn st
sed -i '/weather.service.base.urls=http:\/\/prod-service-5102.aws.opower.it:8080,http:\/\/prod-service-5202.aws.opower.it:8080/d' src/main/resources/clientconfig/application.properties 
man sed
sed -i -e '/weather.service.base.urls=http:\/\/prod-service-5102.aws.opower.it:8080,http:\/\/prod-service-5202.aws.opower.it:8080/d' src/main/resources/clientconfig/application.properties 
cd ..
subl tnb/src/main/resources/clientconfig/application.properties 
cd bgec
svn st
rm src/main/resources/clientconfig/application.properties-e
svn diff
subl src/main/resources/clientconfig/application.properties 
cd ../nova
svn log
svn log | less
cd ../hydr/
svn log | less
cd ../aepo
svn log | less
svn log
svn log | subl
svn up
svn log | subl
..
mkdir clients-parent
cd clients-parent/
svn co -N $R/main/clients
ll
ll clients/
rm -rf *
cd ../site-attribute-service/
git pull origin master
git remotes
git l
git clone https://github.va.opower.it/opower/entity-attribute-sync-job.git
rm -rf entity-attribute-sync-job/
..
git clone https://github.va.opower.it/opower/entity-attribute-sync-job.git
cd entity-attribute-sync-job/
adb reboot bootloader
fastboot oem unlock
gp && w
cd site-service
git pull origin master
cd ../site-attribute-service/
go -b no-refs_update_prod_c_a_s_db_passowrd
go master
gb -D no-refs_update_prod_c_a_s_db_passowrd
go -b no-refs_update_prod_c_a_s_db_password
git s
gc -am"[NO-REFS] Update prod c-a-s DB password"
git push luveen no-refs_update_prod_c_a_s_db_password
gp && w
-
for l in $(find . -type d); do echo "<module>$l</module>"; done | subl
cd ../clients
for l in $(find . -type d); do echo "<module>$l</module>"; done | subl
for l in $(ls); do echo "<module>$l</module>"; done | subl
rm nova/src/main/resources/clientconfig/application.properties-e 
ll hydr/src/main/resources/clientconfig/application.properties-e 
which svn
cd nova
svn st
svn up
svn log | subl
cd ../hydr
svn up
svn log | subl
-
svn log | subl
svn st
cd ../hydr/
svn st
rm src/main/resources/clientconfig/application.properties-e
svn st
svn status
svn ci -m "[SA-968] Revert changes to Canadian clients"
svn up
svn log | subl
svn st
svn info
cd ..
grep "North Shore" *.properties
find -iname "*.properties" -exec grep "North Shore"
find . -iname "*.properties" -exec grep "North Shore"
find . -iname "*.properties" -exec grep "North Shore";
find . -iname "*.properties"
for f in $(find . -iname "application.properties"); do grep "North Shore" $f; done
for f in $(find . -iname "*.xml"); do grep "North Shore" $f; done
cd /Users/luveen.wadhwani/Downloads/CF-Auto-Root-shamu-shamu-nexus6
chmod +x root-mac.sh 
./root-mac.sh 
sudo tools/fastboot-mac boot image/CF-Auto-Root-shamu-shamu-nexus6.img; echo; echo It may take a minute or so for the red Android to appear. If it doesn\'t show up; echo at all, there may be a problem.; echo; echo Press ENTER to continue; read
sudo fastboot boot image/CF-Auto-Root-shamu-shamu-nexus6.img 
cd /code/clients
ls | grep "(dpl|lunh|bgc|wmco)"
ls | grep -e"(dpl|lunh|bgc|wmco)"
ls | grep -ef"(dpl|lunh|bgc|wmco)"
ls | grep -ef "(dpl|lunh|bgc|wmco)"
ls | grep -e "(dpl|lunh|bgc|wmco)"
ls | grep -e "dpl|lunh|bgc|wmco"
for c in dpl lunh bgc wmco; do echo; echo "Checking out $c ..."; svn co $R/main/clients/$c; echo "Done."; done
ll dpl
for c in dpl lunh bgc wmco; do echo; echo "Deleting any existing data for $c ..." rm -rf $c; echo "Deleted."; echo "Checking out a fresh copy of $c ..."; svn co $R/main/clients/$c/trunk $c; echo "Done."; done
ll lunh
rm -rf lunh
rm -rf bgc
for c in lunh bgc; do echo; echo "Deleting any existing data for $c ..." rm -rf $c; echo "Deleted."; echo "Checking out a fresh copy of $c ..."; svn co $R/main/clients/$c/trunk $c; echo "Done."; done
cd ~/Documents/development/5.2/SA-968_migrate_weather_service/
./update_clients.sh 
./change_client_properties.sh 
./svn_status_clients.sh 
sqlite3 .svn/wc.db "pragma integrity_check"
cd /code/clients
sqlite3 .svn/wc.db "pragma integrity_check"
ls -a
ls -al dpl
for d in $(find . -type d -depth 1); echo $d; done
for d in $(find . -type d -depth 1); do echo $d; done
for d in $(find . -type d -depth 1); [ $d != './.idea' ] && ls $d/.svn; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' ] && ls $d/.svn; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' && $d != './target' ] && ls $d/.svn; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && ls $d/.svn; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; ls $d/.svn; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; sqlite3 .svn/wc.db "pragma integrity_check"; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; ll .svn/wc.db "pragma integrity_check"; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; ll "pragma integrity_check"; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; ll; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; ll $d ; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; ll $d/.svn ; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; sudo ll .svn/wc.db "pragma integrity_check"; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; sudo sqlite3 .svn/wc.db "pragma integrity_check"; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; ll .svn/wc.db; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; ll $d/.svn/wc.db; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; chmod +x $d/.svn/wc.db; echo; done
for d in $(find . -type d -depth 1); do [ $d != './.idea' -a $d != './target' ] && echo $d ...; sudo sqlite3 .svn/wc.db "pragma integrity_check"; echo; done
cd ~/Documents/development/5.2/SA-968_migrate_weather_service/
ll
subl svn_commit_clients.sh 
./svn_commit_clients.sh 
w
cd scrapi/
rvm install ruby-1.9.3-p385
cd ../entity-attribute-sync-job/
git s
gc -am"[SA-968] WIP - saving before pulling upstream changes"
go master
git pull origin master
go sa-954_processor
git commit --amend
git l
git rebase master
git rebase -i master
git l
git s
gc -am"Still WIP; updating SASItem in separate PR to pull in here"
go master
go -b sa-954_enhance_sasitem
curl provision-service.va.opower.it:8090/provision/database -HContent-Type:application/json --data '{ "@type": "provision_db", "app_id": "13a06c70-422d-444a-84a9-7f5a2d9b1ed6", "dataset_max_gigabytes": 10, "db_host": "prod-db-service-1006.va.opower.it" }'
ssh dev-service-1013
ssh dev-service-1013.va.opower.it
gpg -ca < ~/Documents/development/5.2/NO-REFS_re_provision_customer_attribute_db/input.txt
ssh dev-service-1013.va.opower.it
brew install enscript
git s
gc -am"Working impl"
git l
gc --amend
git l
git push luveen sa-954_enhance_sasitem
git remotes
git remote add luveen https://github.va.opower.it/luveen-wadhwani/entity-attribute-sync-job
git remotes
git luveen push sa-954_enhance_sasitem
git push luveen sa-954_enhance_sasitem
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
ssh dev-service-1013.va.opower.it
gp && w
ssh dev-service-1013.va.opower.it
cd site-service
git pull origin master
cd site-server/
bundle install
type deploy_stop
$TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
TIER=alpha; echo "Silencing ..."; bundle exec cap $TIER maintenance:create; echo "Stopping ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:stop; echo "Sleeping ..."; sleep 35; echo "Starting ..."; HOSTS=dev-service-1013.va.opower.it cap $TIER deploy:start; echo "Waiting for start ..."; bundle exec cap $TIER maintenance:delete; echo "Done."; echo
gp && w
curl https://api-dev.va.opower.it/v1/cec/echo
curl http://apqa001.va.opower.it:8021/scrapi/v1/echo
ifconfig
inet
curl https://api-qa.va.opower.it/v1/customers/syncHighWatermark
curl -v https://api-qa.va.opower.it/v1/cec/syncHighWatermark
curl -lv https://api-qa.va.opower.it/v1/cec/syncHighWatermark
curl -l https://api-qa.va.opower.it/v1/cec/syncHighWatermark
curl -l https://api-qa.va.opower.it/v1/zok3/syncHighWatermark
curl -lv https://api-qa.va.opower.it/v1/zok3/syncHighWatermark
gp && w
git s
cd entity-attribute-sync-job/
git s
gc -am"More tweaks"
git l
git push luveen sa-954_processor:sa-954_processor-1
mcis -o -e
git s
gc -am"Review feedback round 1 + test cases, minor tweaks"
git push luveen sa-954_processor:sa-954_processor-1
git s
git diff | subl
git l
gc -am"Use PropertyUtils.getProperty"
git push luveen sa-954_processor:sa-954_processor-1
git s
git diff | subl
mcis -o -e
git diff | subl
mcis -o -e
gc -am"cleanup, remove todos"
git push luveen sa-954_processor:sa-954_processor-1
gp && w
curl -lv https://api.va.opower.it/v1/cec/syncHighWatermark
cd customer-service
git s
go master
git pull origin master
cd ../entity-attribute-sync-job/
git s
git diff | subl
git s
git l
gc -am"review feedback round 1, cleanup"
git s
gc --amend
git s
git diff
gc -am"Moar review feedback round 2"
git push luveen sa-954_processor:sa-954_processor-`
git push luveen sa-954_processor:sa-954_processor-1
git l
git s
git diff
git diff | subl
git s
gc -am"Review feedback round 3"
git push luveen sa-954_processor:sa-954_processor-1
git l
cd ../scrapi/
git pull origin master
git l
gp && w
cd scrapi/
git pull origin master
cd ../entity-sync-job/esj-cli/
git s
go master
git pull origin master
ll
cd bin/
sudo esj-cli -m run -t prod -c cec -p 2
w
cd core/
ll
git pull origin master
cd ../scrapi/
git pull origin master
cd ../site-attribute-service/
git pull origin master
cd ../entity-
cd ../entity-sync-job/
open ~/.aliases 
subl $_
bash_refresh 
gp
gpu
emptytrash 
git s
gpu
w
cd clients/aic/
ll
sudo discoveryutil udnsflushcaches
sudo killall -HUP mDNSResponder
w
cd entity-attribute-sync-job/
git s
git rm src/test/resources/com/opower/attribute/batch/processor/keyMappings1.yaml
git rm -f src/test/resources/com/opower/attribute/batch/processor/keyMappings1.yaml
git s
git rm src/test/resources/com/opower/attribute/batch/processor/valueMappings.yaml
git rm -f src/test/resources/com/opower/attribute/batch/processor/valueMappings.yaml
git s
gc -am"Tests working some of the way; a few cases still remain"
git push luveen sa-954_processor
git push luveen sa-954_processor-1
git push luveen sa-954_processor-2
git push luveen sa-954_processor:sa-954_processor-2
git push luveen sa-954_processor:sa-954_processor-1
go master
grm
gpu
go -b sa-974_year_built
git s
gc -am"[SA-974] Add int test to verify all mapped attribute keys have same type as corresponding Parcel fields"
gb -l
go sa-954_processor
git s
gc -am"Complete TestAttributeSyncPropertyUtils"
git l
git push luveen sa-954_processor:sa-954_processor-1
gb -l
go sa-974_year_built
git s
git rm src/main/java/opower/attribute/batch/util/AttributeSyncPropertyUtils.java
git rm -f src/main/java/opower/attribute/batch/util/AttributeSyncPropertyUtils.java
git s
git l
gc -am"broken - add parcel helpers"
gb-l
gb -l
go sa-954_processor
gc -am"still broken"
go sa-954_processor
gb -l
go sa-974_year_built
git s
git l
mcis -o -e
mci -o -e
git s
gc -am"Tests working"
git l
grm
grim
git s
git l
gc --amend
git l
git push luveen sa-974_year_built
gp && w
cd entity-attribute-sync-job/
git s
cd ../site-attribute-service/
git s
gpu
git s
go -b no-refs_change_pool_key_mapping
gc -am"[NO-REFS] Update pool attribute mapping to enum"
git l
git push luveen no-refs_change_pool_key_mapping
git remotes
git remote add luveen https://github.va.opower.it/luveen-wadhwani/site-attribute-service
git push luveen no-refs_change_pool_key_mapping
git l
go master
gpu
git l
gpu
go -b sa-954_return_all_core_keys
git s
git diff | subl
mcis -e
mci -o -e
cd attribute-services-common-translation/
mci -o -e
..
gc -am"[SA-954] Correct the behavior of translator's get-all-core-keys method"
git push luveen sa-954_return_all_core_keys
git s
git diff | subl
git s
gc -am"Add test case"
grm
grim
git push -f luveen sa-954_return_all_core_keys
mcis -o -e
git diff
gc -am"Add value mapping for pool"
git l
gc --amend
git l
git push luveen sa-954_return_all_core_keys
git diff | subl
gc -am"Add test case for key/value mappings"
grm
grim
git l
git push -f luveen sa-954_return_all_core_keys
git s
mcis -o -e
cd attribute-services-common-translation/
mci -o -e
-
gc -am"Remove unused import"
go master
gpu
go sa-954_return_all_core_keys
grm
grim
git push luveen sa-954_return_all_core_keys
git push -f luveen sa-954_return_all_core_keys
git s
bash_refresh && gp
gds
mcis -o -e
cd attribute-services-common-translation/
mci -o -e
gds
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-954_return_all_core_keys
..
grm
grim
git push -f luveen sa-954_return_all_core_keys
go master
git stash
go master
gpu
go -b sa-974_year_built
git stash apply
git s
mcis -o -e
cd attribute-services-common-translation
mci -o -e
git l
gds
gc -am"[SA-974] Map year_built to INTEGER instead of DATE"
git push luveen sa-974_year_built
gp && w
gp && w
cd site-attribute-service/
git s
git push luveen sa-974_year_built
git s
gds
gc -am"Whitespace"
grm
grim
git push -f luveen sa-974_year_built
zkServer start
go master
gpu
go sa-974_year_built
grm
grim
git l
subl ~/.aliases 
bash_refresh && gp
unalias mt
mysqld
alias mysqld
which mysqld
mysqld_safe 
sudo mysqld_safe 
ps aux | grep mysql
mysqladmin shutdown
sudo mysqladmin shutdown
sudo mysqld_safe &
mysql -A
mysql -A -u root
mysql -uroot -e 'SHOW VARIABLES WHERE Variable_Name LIKE "%dir"'
ll /usr/local/mysql-percona-5.1.45-10/var/
sudo ll /usr/local/mysql-percona-5.1.45-10/var/
sudo rm -rf /usr/local/mysql-percona-5.1.45-10/var/poseur_test
mysql -u root
zkServer start
zkServer restart
ps aux | grep zk
ps aux | grep zookeeper
subl /usr/local/etc/zookeeper/zoo.cfg
sudo subl /usr/local/etc/zookeeper/zoo.cfg
sudo open /usr/local/etc/zookeeper/zoo.cfg
mysql -u root
mysql -u root -p
mysql -u poseur -pposeur
cd ../report
mt IntTestBatchParcelJdbcDAO -e -X
gpu
mt IntTestBatchParcelJdbcDAO -e -X
mt IntTestBatchParcelJdbcDAO -e -X -DfailIfNoTests=false
mt IntTestBatchParcelJdbcDAO -o -e -X -DfailIfNoTests=false
alias mt
type mt
mvn test -o -e -X -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
mci -Dexhaustive -o -e -DfailIfNoTests=false -Dit.test=IntTestBatchParcelJdbcDAO
cd report-libs-di
ll
cd ..
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
gpu
mvn test -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
mysqladmin shutdown 
sudo mysqladmin shutdown 
mysqladmin start
sudo mysqladmin start
ll /tmp/
sudo mysqld_safe &
ll /tmp/
sudo mysqld_safe &
ps aux | grep mysql
kill -9 474
sudo kill -9 474
ps aux | grep mysql
sudo kill -9 8982
ps aux | grep mysql
sudo kill -9 9073
ps aux | grep mysql
sudo mysqladmin start
ps aux | grep mysql
sudo mysqld_safe &
ps aux | grep mysql
mysql -u poseur -pposeur
mvn test -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
create_local_dbs 
subl /code/infrastructure/bin/create_dbs.sql
mysql -u root
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
cd entity-attribute-sync-job/
git push luveen sa-974_year_built
git s
gc -am"Whitespace and comments"
grm
grim
git push -f luveen sa-974_year_built
gb -l
go sa-954_processor
git s
gc -am"Inject esjContext; fleshing out prolly final test case"
gb -l
go sa-974_year_built
git l
git lk
git l
git s
gds
gc -am"Add todo to extend test for customer attributes"
gds
gc -am"move todo"
go master
gpu
go sa-974_year_built
grm
grim
git l
mcis -o -e
git push -f luveen sa-974_year_built
gb -l
go sa-954_processor
git s
gc -am"Both updates reqd not working"
go sa-974_year_built
go sa-954_processor
git s
gc -am"In-progress remove ParcelTestData"
go sa-954_processor
git diff origin master | subl
git diff origin master
git diff origin/master
git diff origin/master | subll
git diff origin/master | subl
gb -l
go sa-974_year_built
mvn test -o -e -Dtest=        parcel.setChangedOn(UPDATED_AT_DATE);
mvn test -o -e -Dtest=IntTestReportSiteParcelDAO
gits
git s
gc -am"Almost removing ParcelTestData"
gb -l
go sa-954_processor
git s
git d
gc -am"Comments on updated processor design"
git push luveen sa-954_processor:sa-954_processor-2
gb -l
go sa-974_year_built
bash_refresh && gp
mtIntTestReportSiteParcelDAO
mt IntTestReportSiteParcelDAO
bash_refresh && gp
mt IntTestReportSiteParcelDAO
subl ~/.functions 
bash_refresh && gp
mt IntTestReportSiteParcelDAO
alias mt
man unalias
unalias mt
alias mt
mt IntTestReportSiteParcelDAO
mt IntTestReportSiteParcelDAO -o -e
mt IntTestReportSiteParcelDAO -o -e -X
which mysql.cnf
which my.cnf
/usr/local/my.cnf
ll /usr/local/my.cnf
ll ~/my.cnf
ll ~/.my.cnf
ll /etc/my.cnf
subl /etc/my.cnf
subl /etc/
ll /etc/
cat master.passwd
cat /etc/master.passwd
sudo cat /etc/master.passwd
ps aux | grep mysql
cd /usr/local/mysql-percona-5.1.45-10/var
cd /usr/local/mysql-percona-5.1.45-10
ll
chown ag+rwx var
chmod ag+rwx var
sudo chmod ag+rwx var
git diff origin master
git l
cd var/
ll
rm -rf poseur_test/
sudo rm -rf poseur_test/
sudo rm -rf poseur_test
ll
rm -rf poseur_test
sudo rm -rf poseur_test
ll
sudo rm -rf poseur_test
ll
ll poseur
sudo ll poseur
sudo rm poseur_test/meter_read_day#P#p0.ibd
users
sudo users
..
ll
..
ll
brew install mysql51
ln -sfv /usr/local/opt/mysql51/*.plist ~/Library/LaunchAgents
ps aux | grep mysql
kill -9 13919
sudo kill -9 13919
ps aux | grep mysql
sudo mysqladmin shutdown
ps aux | grep mysql
rm -rf /usr/local/mysql-percona-5.1.45-10/
sudo rm -rf /usr/local/mysql-percona-5.1.45-10/
sudo rm -rf /usr/local/mysql-percona-5.1.45-10
sudo rm /usr/local/mysql
ll /usr/local/
bash_refresh && gp
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql51.plist
ps aux | grep mysql
w
cd entity-attribute-sync-job/
git s
git diff
git dd
git d
mvn test -o -e IntTestReportSiteParcelDAO
mvn test -o -e -Dtest=IntTestReportSiteParcelDAO
git d
gc -am"IntTestReportSiteParcelDAO not working""
gc -am"IntTestReportSiteParcelDAO not working"
git push luveen sa-974_year_built
gb -l
go sa-954_processor
curl -XPUT -H 'Accept: application/json' -H 'Content-Type: application/json' -v -d '{"utilityCode":"ZOK1","key":"water_heating_mechanism","type":"ENUMERATION","value":"STORAGE"}' 'http://dev-service-1016.va.opower.it:8240/site-attributes/ZOK1/ab705ae3-38ac-11e4-903c-0025b50000cf/water_heating_mechanism'
cd ../entity-services-common/
git s
git l
git reset
git s
gpu
find . -iname "EntityResourceFactory.java"
git s
git reset --hard
git s
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
gp && w
create_local_dbs 
subl `which create_local_dbs`
which create_local_dbs 
type create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
...
gpu
cd $workspace/infrastructure
svn up
create_local_dbs 
mysql -u root
sudo mysql -u root
create_local_dbs 
CREATE_DBS_FILE="/tmp/create_local_dbs.sql";
    touch $CREATE_DBS_FILE;
    cat $workspace/infrastructure/bin/create_dbs.sql >> $CREATE_DBS_FILE;
    cd $workspace/core/db/ami_schema;
    echo "use poseur;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_client_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
    echo "use poseur_import_test;" >> $CREATE_DBS_FILE;
    cat ami_schema.sql >> $CREATE_DBS_FILE;
subl $CREATE_DBS_FILE 
mysql -u root
create_local_dbs 
subl /etc/my.cnf 
cd /usr/local/
ll
ll Cellar/mysql51/
ll Cellar/
ln -s Cellar/mysql51 mysql
ll
cd mysql/
brew unset TMPDIR
unset TMPDIR
mysql_install_db
brew mysql_install_db
ll 5.1.73/bin/
cd 5.1.73/bin/
./mysql_install_db 
bash_refresh && gp
which mysql
subl ~/.bashrc 
subl ~/.bash_profile 
subl ~/.path 
subl ~/.exports 
ll /usr/local/mysql/bin
...
..
ll
ln -snf Cellar/mysql51/5.1.73/
ln -snf Cellar/mysql51/5.1.73 mysql
ll
which mysql
bash_refresh && gp
mysql -uroot
create_local_dbs 
mysql -uroot -p
create_local_dbs 
w
cd report-libs
mvn test -o -e -DfailIfNoTests=false -Dtest=IntTestBatchParcelJdbcDAO
cd ..
cd sync-job-commons/
gpu
mcis -o -e
mcis -e
mysql -u root
cd ../site-attribute-service/
git s
git d
git s
git d
go master
gpu
go -b sa-890_skip_scrapi
git s
gds
gc -am"[SA-890] Skip ScrAPI updates for service attributes with no core key mapping"
git l
go master
gpu
go sa-890_skip_scrapi
grm
mcis -e
mci -o -e
cd site-attribute-server/
bundle install
..
mysql -uroot < site-attribute-db/db/schema-local.ddl
zkServer start
mci -o -e
git s
git push luveen sa-890_skip_scrapi
git s
gc -am"Add log messagbe"
gc --amend
grm
grim
git push -f luveen sa-890_skip_scrapi
git s
gc -am"CR feedback round 1"
git push luveen sa-890_skip_scrapi
git l
go master
gpu
go sa-890_skip_scrapi
grm 
git l
grim
git l
git push -f luveen sa-890_skip_scrapi
git s
go master
gpu
go -b sa-998_hystrix_timeout
git s
gds
git s
git l
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
gc -am"Update values"
grn
grm
grun
grim
git push luveen sa-998_hystrix_timeout
git s
gds
gc -am"Whitespace"
git l
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
git s
gds
mci -o -e
mci -o -e-rf :site-attribute-server
mci -o -e -rf :site-attribute-server
mci -o -e
git s
gds
git s
mci -o -e
git s
git l
gc -am"CR feedback round 1"
git push luveen sa-998_hystrix_timeout
git s
gc -am"typo"
go master
gpu
go sa-998_hystrix_timeout
grm
grim
git push -f luveen sa-998_hystrix_timeout
mci -o -e
git s
grm
grim
git push -f luveen sa-998_hystrix_timeout
git l
go master
gpu
git lk
git l
git remotes
git remote add benson https://github.va.opower.it/benson-fung/site-attribute-service
git fetch benson
go SA-975_merge_null_attribute_value
go master
gpu
go SA-975_merge_null_attribute_value
git l
grm
go master
git stash
git fetch benson
go SA-975_merge_null_attribute_value
git pull
git l
go master
git l
gpu
git fetch benson
gb -l
gb -D SA-975_merge_null_attribute_value
git fetch benson
go SA-975_merge_null_attribute_value
git l
mci -o -e
git pull
gitl
git l
mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO
for (( ; ; )); do mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean test -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
for (( ; ; )); do echo "Running test..."; echo; echo; echo; mvn clean verify -o -e; echo "Done."; echo; echo; echo; echo "------------------------------"; echo; echo; echo; done
brew install wineskin
mv /Users/luveen.wadhwani/.cache/winetricks/steam/SteamSetup.exe /Users/luveen.wadhwani/.cache/winetricks/steam/SteamSetup.exe.deleteme
cd /Users/luveen.wadhwani/.cache/winetricks/steam/
ll
rm -f *
emptytrash
-
go master
gpu
gb -l
gb -D SA-975_merge_null_attribute_value
gp && w
cd rest-client-tools/
gpu
ll
ll rest-client-generator
rm -rf rest-client-hystrix
rm -rf rest-client-generator
rm -rf rest-client-test
ll
cd ../site-service
gpu
go -b sa-998_hystrix_timeout
git s
gds
gc -am"[SA-998] Hystrix tweaking to allow more concurrent requests"
git push luveen sa-998_hystrix_timeout
git s
git l
git s
git push luveen sa-998_hystrix_timeout
git s
mci -o -e
git s
gds
mci -o -e
git s
gc -am"CR feedback round 1"
go master
git push luveen sa-998_hystrix_timeout
go sa-998_hystrix_timeout
git s
go master
gpu
go sa-998_hystrix_timeout
git push luveen sa-998_hystrix_timeout
git s
gds
git s
git push luveen sa-998_hystrix_timeout
git s
mci -o -e
mysql -u root < site-db/db/schema-local.ddl 
mci -o -e
git s
grm
grim
git l
git push -f luveen sa-998_hystrix_timeout
go master
gpu
git l
cd ../entity-attribute-sync-job/
git l
git s
git l
gc -am"All processor tests working yayy partayyyy"
git push luveen sa-954_processor:sa-954_processor-1
emptytrash 
go -b sa-954_processor_backup_before_simplifying
git l
go sa-954_processor
git push luveen sa-954_processor:sa-954_processor-1
go master
gpu
go sa-954_processor
grm
git rebase --continue
git l
git s
gc -am"rebasing"
git push luveen sa-954_processor:sa-954_processor-1
git push -f luveen sa-954_processor:sa-954_processor-1
gb -l
gb -D sa-954_processor_backup_before_simplifying
go -b sa-954_processor_backup_before_simplifying
git push luveen sa-954_processor_backup_before_simplifying
git s
gc -am"Simplified processor and tests"
git push luveen sa-954_processor_backup_before_simplifying
git l
git reset HEAD~1
go sa-954_processor
git s
git l
gc -am"Simplified processor and tests"
git push luveen sa-954_processor
git push luveen sa-954_processor:sa-954_processor-1
go sa-954_processor_backup_before_simplifying
git l
git push luveen sa-954_processor_backup_before_simplifying
git push luveen -f sa-954_processor_backup_before_simplifying
go sa-954_processor
mcis -e && mci -o -e
mci -o -e
ll
mcis -e && mci -o -e
mci -o -e
gc -am"Make tests happy (but myself sad)"
git push luveen sa-954_processor:sa-954_processor-1
git s
gc -am"Add more test cases"
git push luveen sa-954_processor:sa-954_processor-1
git s
mcis -o -e
mci -o -e
gc -am"Final cleanup"
git l
gc --amend
git push luveen sa-954_processor:sa-954_processor-1
gp && w
cd site-attribute-service/
gpu
mcis -o -e
emptytrash
emptytrash 
cd ..
git clone https://github.va.opower.it/luveen-wadhwani/attribute-service-metadata-generation.git
cd attribute-service-metadata-generation/
git remotes
cp -rp ~/Downloads/metadata/*
cp -rp ~/Downloads/metadata/* .
ll
git s
gc -am"Initial commit"
ga *
gc -am"Initial commit"
git l
go -b norefs-initial_commit
git l
git s
go master
git reset --hard
git s
git l
git reset --hard 7c5a6b2
git l
gpu
go norefs-initial_commit
grm
grim
cp -rp ~/Downloads/metadata/* .
git s
ll
cd ..
rm -rf attribute-service-metadata-generation/
rm -rf attribute-service-metadata-generation
git clone https://github.va.opower.it/luveen-wadhwani/attribute-service-metadata-generation.git
cd attribute-service-metadata-generation/
go -b norefs-initial_commit
cp -rp ~/Downloads/metadata/* .
git s
ga *
gc -am"Add scripts and fixtures
gc -am"Add scripts and fixtures"
git l
git remotes
git push origin norefs-initial_commit
cd ../site-attribute-service/
ll
mysql -u root < site-attribute-db/db/schema-local.ddl 
mysql -u root < customer-attribute-db/db/schema-local.ddl 
zkServer status
zkServer start
mysql -u root
mysql -u poseur -pposeur
gpu
mysql -u root < site-attribute-db/db/schema-local.ddl 
gp && w
cd site-attribute-service/
gpu
go -b sa-954_dao_unique_insert
mysql -u root
service mysql start
which mysqld
/usr/local/mysql/bin/mysqld_safe 
sudo /usr/local/mysql/bin/mysqld_safe 
mysql -u root
subl /usr/local/var/mysql/lwadhwani.local.err
cd /usr/local/mysql/
ll
..
ll
mysql.server restart
sudo mysql.server restart
unset TMPDIR
mysql_install_db --verbose --user=`whoami` \\
--basedir="$(brew --prefix mysql)" \\
mysql_install_db --verbose --user=`whoami` \\ --basedir="$(brew --prefix mysql)" \\ --datadir=/usr/local/var/mysql --tmpdir=/tmp
ll
sudo mysql_install_db --verbose --user=`whoami` \\ --basedir="$(brew --prefix mysql)" \\ --datadir=/usr/local/var/mysql --tmpdir=/tmp
mysql_secure_installation
/usr/local/opt/mysql51/bin/mysqld_safe 
sudo /usr/local/opt/mysql51/bin/mysqld_safe 
sudo /usr/local/opt/mysql51/bin/mysqld_install_db
sudo /usr/local/opt/mysql51/bin/mysql_install_db
sudo /usr/local/opt/mysql51/bin/mysqld_safe 
mysql.server start
cd /var/run/
ll
ll | grep mysql
ll /etc/my.cnf 
subl /etc/my.cnf 
ps aux | grep mysql
unset TMPDIR
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
brew install my_print_defaults
/usr/local/Cellar/mysql51/5.1.73/
cd /usr/local/Cellar/mysql51/5.1.73/
ll
find . -iname "my_print_defaults"
cd bin/
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
mysql_install_db --verbose --user=`whoami` --datadir=/usr/local/var/mysql --tmpdir=/tmp
mysql.server start
brew uninstall mysql51
brew install mysql51
~
brew install mysql51
unset TMPDIR
mysql.server start
brew --prefix mysql
brew uninstall mysql56
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql51)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
brew --prefix mysql
brew --prefix mysql51
ll /usr/local/opt/mysql51
cp -rp /usr/local/opt/mysql51/homebrew.mxcl.mysql51.plist ~/Library/LaunchAgents
launchctl load -w ~/Library/LaunchAgents/*mysql*.plist
mysql.server start
brew info mysql51
launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mysql51.plist
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql51.plist
mysql.server start
ll /usr/local/Cellar/mysql51/5.1.73/
sudo chown -R /usr/local/Cellar/mysql51 luveen.wadhwani:wheel
man chown
sudo chown -R luveen.wadhwani:wheel /usr/local/Cellar/mysql51
mysql.server start
ll /usr/local/Cellar/
ll /usr/local/var/mysql
sudo chown -R luveen.wadhwani:wheel /usr/local/var/mysql
mysql.server start
mysql -u root
w
cd site-attribute-service/
git s
git l
git diff | subl
mci -o -e
mci -o -e -rf :attribute-services-common-db
subl site-attribute-server/log/logstash.log 
subl target/failsafe-reports/failsafe-summary.xml 
mci -o -e -X -v -rf :attribute-services-common-db
mci -o -e -X -V -rf :attribute-services-common-db
ll /code/site-attribute-service/attribute-services-common-db/target/failsafe-reports
subl /code/site-attribute-service/attribute-services-common-db/target/failsafe-reports
mci -e -X -V -rf :attribute-services-common-db
mci -e -rf :attribute-services-common-db
mci -e
mci -o -e
git s
git diff | subl
git s
gc -am"[SA-954] Require unique updated_ats on entity_attribute chronology entries"
git l
go master
gpu
go sa-954_dao_unique_insert
mcis -o -e
mcis -o -e -rf :attribute-services-common-db
mci -o -e
gc -am"checkstyle"
grm
rm -fr "/code/site-attribute-service/.git/rebase-apply"
grm
grim
git l
git push luveen sa-954_dao_unique_insert
git diff | subl
cd attribute-services-common-db/
mci -o -e
..
gc -am"More tests"
grm
grim
git push -f luveen sa-954_dao_unique_insert
mcis -o -e
git diff | subl
gc -am"[NO-REFS] Fix test data attribute keys"
git push luveen sa-954_dao_unique_insert
mysql -u root < site-attribute-db/db/schema-local.ddl 
zkServer restart
zkServer status
zkServer stop
zkServer restart
subl /usr/local/etc/zookeeper/zoo.cfg
zkServer restart
mysql -u root -D poseur_test
mci -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO
git s
git diff | subl
git l
gc -am"CR feedback round 1"
git push luveen sa-954_dao_unique_insert
brew install sublime-text
brew install sublimetext
brew tap caskroom/versions
brew cask
brew cask install
git s
go master
gpu
go sa-954_dao_unique_insert
grm
grim
git push luveen sa-954_dao_unique_insert
git push -f luveen sa-954_dao_unique_insert
go master
gpu
go -b sa-991_addl_reader
git s
git stash save "[SA-991] Initial WIP on attr service reader with updated_at"
go master
gpu
gb -l
go sa-954_dao_unique_insert
git s
git l
gc -am"CR feedback round 2"
git push luveen sa-954_dao_unique_insert
git s
git diff | subl
git s
git l
gc -am"CR feedback round 2"
git push luveen sa-954_dao_unique_insert
mci -o -e
mci -o -e -rf :attribute-services-common-db
gits
gc -am"checkstyle happiness"
grm
grim
git push -f luveen sa-954_dao_unique_insert
git s
git l
go master
gpu
git s
go -b sa-955_writer
gc -am"[SA-955] WIP"
go master
gpu
gb -l
go sa-954_dao_unique_insert
git l
gc --amend
git l
gc -am"CR feedback round 4"
git push luveen sa-954_dao_unique_insert
git push -f luveen sa-954_dao_unique_insert
go master
gb -l
go sa-955_writer
git s
gc -am"WIP 2"
go master
gpu
go sa-955_writer
mcis -o -e
git s
mcis -o -e
git s
gc -am"Probably don't need this"
go master
gb -l
go sa-954_dao_unique_insert
grm
grim
git l
git push -f luveen sa-954_dao_unique_insert
go master
gpu
gb -l
go sa-955_writer
grm
grim
mcis -o -e
git diff origin master
git diff origin/master
git diff origin/master | subl
go attribute-services-common-server/src/main/java/com/opower/attribute/resource/AbstractAttributeServerResource.java
git s
git diff origin/master | subl
go -- attribute-services-common-server/src/main/java/com/opower/attribute/resource/AbstractAttributeServerResource.java
git s
git diff origin/master | subl
go origin/master -- attribute-services-common-server/src/main/java/com/opower/attribute/resource/AbstractAttributeServerResource.java
git s
git rm attribute-services-common-server/src/main/java/com/opower/attribute/resource/util/AttributeValidator.java
git s
gc -am"Revert some changes"
gds
alias gds
git diff origin/master | subl
dbdv001
git s
git diff origin/master | subl
dbdv001
gp && w
cd site-attribute-service/
git s
git diff
gds
mcis -o -e
gds
git l
gc -am"Formatting"
git push luveen sa-955_writer
gp && w
dbdv001
mysql -A
mysql -A -u root
gp && w
cd entity-attribute-sync-job/
git s
..
ll
-
git s
mci -o -e
mvn verify -o -e -DfailIfNoTests=true -Dtest=IntTestReportSiteParcelDAO#testGetEntitiesUpperBound
mvn verify -o -e -DfailIfNoTests=true -Dtest=IntTestReportSiteParcelDAO
mvn verify -o -e
git s
gc -am"CR feedback round 1 part 1 - address comments before try/catch one"
git s
mvn verify -o -e
git s
mvn verify -o -e
gc --amend
git l
gc --amend
git l
gc -am"CR feedback round 4 part 2 - address try/catch comment"
git s
git l
mci -o -e
git l
gc -am"CR feedback round 4 part 3 - refactor internals of SASIP.java"
git push luveen sa-954_processor
go master
gpu
go sa-954_processor
git push luveen sa-954_processor:sa-954_processor-1
git s
git diff | subl
mci -o -e
gitl
git l
gc -am"CR feedback round 5"
git push luveen sa-954_processor:sa-954_processor-1
git l
go master
gpu
gb -l
go sa-974_year_built
grm
git rebase --continue
git l
git s
gc -am"rebase against master"
git push luveen sa-974_year_built
git push -f luveen sa-974_year_built
go master
gb -l
go -b sa-991_addl_reader
git s
git stash save "[SA-991] Initial WIP on attr service reader with updated_at"
go master
gpu
gb -l
go sa-954_processor
git s
mci -o -e
git l
gc -am"CR feedback round 6"
git push luveen sa-954_processor:sa-954_processor-1
git s
git l
go master
gpu
go sa-954_processor
grm
grim
git l
git push -f luveen sa-954_processor:sa-954_processor-1
go master
gpu
go sa-955_writer
go -b sa-955_writer
git s
gc -am"[SA-955] WIP"
go master
gpu
go sa-954_processor
go master
gb -l
sa-954_enhance_sasitem
gb -l
go sa-955_writer
git s
go master
go -b sa-954_processor_fix
go master
go sa-955_writer
git s
gc -am"some more progress"
git s
mcis -o -e
gc -am"Compiling; tests pending"
git push luveen sa-955_writer
git s
gc -am"WIP update to use select-for-update logic"
git push luveen sa-955_writer
gc -am"DAO updates almost working; Writer tests pending"
git push luveen sa-955_writer
git diff origin/master | subl
git s
git l
gc -am"DAO updates working: Writer tests next"
git s
gc -am"Finished writer tests"
mci -o -e
mcis -o -e
mci -o -e
git s
gc -am"checkstyle"
git push luveen sa-955_writer
mci -o -e
mci -e
mci -o -e
git s
gc -am"More fix tests"
subl ~/.aliases
bash_refresh && gp
gdoms
gds
mci -o -e
gc -am"Fix some more"
gdoms
mci -o -e
gc -am"Small tweak"
grm
grim
git l
git push -f luveen sa-955_writer
gdoms
gp && w
cd site-attribute-service/
mcis -o -e
git s
git diff origin/master | subl
gc -am"Completed changes"
mci -o -e
git s
git push luveen sa-955_writer
mci -o -e
mci -o -e -rf :attribute-services-common-server
mci -o -e
git s
gc -am"Fix tests"
git push luveen sa-955_writer
mysql -u root -A
bash_refresh && gp
gdoms
go master
gpu
go sa-955_writer
grm
grim
git l
gdom
gdoms
gc -am"add doc"
grm
grim
git push -f luveen sa-955_writer
gdoms
gc -am"Optimize"
grm
grim
git push -f luveen sa-955_writer
gc --amend
git l
git push -f luveen sa-955_writer
gp && w
cd site-attribute-service/
go master
gpu
gb -l
go sa-955_writer
server start mysql
alias server
type server
mysql -u root -A
brew info mysql
mysql.server start
which mysql
cd /usr/local/
ll
sudo chown -R luveen.wadhwani:wheel /usr/local/mysql
ll /usr/local/Cellar/
cd /usr/local/Cellar/
sudo chown -R luveen.wadhwani:wheel /usr/local/Cellar
mysql.server start
sudo mysql.server start
killall mysql
sudo killall mysql
/var/run/
cd /var/run/
ll
sudo mysql.server start
subl /etc/my.cnf 
which mysql
ll /usr/local/mysql
brew info mysql51
unset TMPDIR
mysql_install_db
mysql.server start
mysql
/usr/local/Cellar/mysql51/5.1.73/bin/mysqld_safe &
subl /usr/local/var/mysql/
sudo /usr/local/Cellar/mysql51/5.1.73/bin/mysqld_safe &
mysql
sudo /usr/local/Cellar/mysql51/5.1.73/bin/mysqld_safe
ll /usr/local/var/mysql/lwadhwani.local.pid
cd /usr/local/var/mysql
ll
rm lwadhwani.local.err
sudo chown -R luveen.wadhwani:wheel lwadhwani.local.err
mysql.server start
mysql.server stop
mysql.server start
mysql
mysql -A -u root
w
cd site-attribute-service/
git l
go master
gpu
git l
gp && w
cd entity-attribute-sync-job/
go master
gpu
gb -l
go sa-974_year_built
grm
git rebase --continue
git l
mci -e
ll
subl ~/.profile
mci -e
git s
gdoms
mci -o -e
gc -am"Rebase; tweaks"
grm
grim
git push -f luveen sa-974_year_built
git s
gc -am"Field"
gr 
grm
grim
git push -f luveen sa-974_year_built
go master
gpu
gb -l
sa-955_writer
go sa-955_writer
go -b sa-887_integrate
git l
go master
gc -am"[SA-887] WIP"
go master
gb -l
go sa-955_writer
git s
gc -am"CR feedback round 1 - part 1"
git push luveen sa-955_writer
bash_refresh && gp
w
cd site-attribute-service/
bash_refresh && gp
subl ~/.profile
mysql.server start
cd /usr/local/
ll
[ -x /usr/local/var/mysql/lwadhwani.local.err ] && chown -R luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err
mysqld_safe
sudo mysqld_safe
ll /usr/local/var/mysql/lwadhwani.local.err 
touch -f
man touch
ll /usr/local/var/mysql/lwadhwani.local.err 
[ -x /usr/local/var/mysql/lwadhwani.local.err ] && chown -R luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err
ll /usr/local/var/mysql/lwadhwani.local.err 
[ -e /usr/local/var/mysql/lwadhwani.local.err ] && chown -R luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err
sudo chown -R luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err
ll /usr/local/var/mysql/lwadhwani.local.err 
mysql.server start
mysql
w
cd site-attribute-service/
gb -l
go sa-955_writer
git s
cd ../entity-attribute-sync-job/
git s
gc -am"Refactor writer class"
git s
mci -o -e
gc -am"make attribute service writer more efficient"
git push luveen sa-955_writer
git l
go master
gb -l
go sa-887_integrate
git s
go master
go sa-955_writer
git s
mci -o -e
mvn verify -o -e -DfailIfNoTests=false -Dtest=TestCompositeSiteAttributeSyncItemWriter
mci -o -e
gc -am"More cleanup"
git push luveen sa-955_writer
gp && w
cd site-attribute-service/
go -b sa-887_integrate
git s
mcis -o 0e
mcis -o -r
mcis -o -e
mcis -e
mcis -o -e
mcis -U -e
mvn dependency:analyze
rm -rf ~/.m2/repository/com/opower/site-attribute*
mcis -U -e
git s
gd
git diff
gds
mvn dependency:tree
mcis -o -e
gds
mcis -o -e
mvn dependency:tree
mvn -o -e dependency:tree
mcis -o -e
git s
gds
gdoms
go master
gpu
gb -l
git s
sudo chown luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err 
mysql.server start
gpu
gb -l
gpu
go -b sa-887_integrate_1
mysql -u root < site-attribute-db/db/schema-local.ddl 
ll
git s
gc -am"Probably don't need these changes either"
go mastetr
go master
mcis -o -e
cd ~/.m2/repository/com/opower/site-attribute-db/0.0.11/
ll
jar tvf site-attribute-db-0.0.11.jar
w
cd site-attribute-service/
gb -l
sa-887_integrate_1
gpu
go sa-887_integrate_1
git l
cd ../entity-attribute-sync-job/
git s
gc -am"Closer on easj int test"
git push luveen sa-887_integrate
gp && w
gp && w
subl ~/.profile
ll /usr/local/mysql/
mysql.server start
ll /usr/local/var/mysql/
chown luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err 
sudo chown luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err 
mysql.server start
mysql -A -u root
cd entity-attribute-sync-job/
go master
gb -l
go sa-887_integrate
git rebase sa-955_writer
git s
gc -am"WIP updates"
git rebase sa-955_writer
git rebase --continue
git l
git s
gc -am"Commit before attempting to fix local s-a-s build not recognizing Joda time Instant"
git s
gc -am"Add high watermark dao; int test pending. Also add sync step context listener"
git s
gb -l
go sa-955_writer
git s
gds
mci -o -e
mvn verify -o -e -DfailIfNoTests=false -Dtest=TestCompositeSiteAttributeSyncItemWriter
mci -o -e -DfailIfNoTests=false -Dtest=TestCompositeSiteAttributeSyncItemWriter
mci -o -e -DfailIfNoTests=false -Dtest=IntTestReportSiteParcelDAO
git s
mci -o -e
git l
gc -am"CR feedback round 1 - part 2"
git push luveen 
git push luveen sa-955_writer
git l
mci -o -e -DfailIfNoTests=false -Dtest=IntTestReportSiteParcelDAO
gdoms
mci -o -e -DfailIfNoTests=false -Dtest=IntTestReportSiteParcelDAO
git s
gb -l
go sa-887_integrate
git rebase sa-955_writer
git l
gb -l
go sa-974_year_built
gds
git l
gc -am"CR feedback round 1"
git push luveen sa-974_year_built
git l
go master
gpu
go sa-974_year_built
grm
grim
git push -f luveen sa-974_year_built
go master
gpu
gb -l
go sa-887_integrate
grm
git rebase --continue
git l
mysql -u root
mysql -u root -D poseur_test -A
cd ../site-attribute-service/
gdoms
go master
gpu
go sa-887_integrate_1
gdoms
gds
go master
gpu
go sa-887_integrate_1
grm
gdoms
mysql -U -D site_attribute_test -A
mysql -U root -D site_attribute_test -A
mysql -U -D site_attribute_test -A
mysql -Uroot -D site_attribute_test -A
mysql -uroot -D site_attribute_test -A
gp && w
cd customer-service
..
for c in customer site account readstream; do echo; echo "Creating local schema for $c-service..."; mysql -u root < $c-service/$c-db/db/schema-local.ddl; echo "Created schema."; done
zkServer status
zkServer stop
zkServer status
zkServer start
cd report
gpu
cd ../core/
gpu
mysql -u root -D poseur_test -A
cd entity-s
cd entity-sync-job/
tailf target/surefire-reports/com.opower.entity.batch.IntTestEntitySyncJob-output.txt 
subl target/surefire-reports/com.opower.entity.batch.IntTestEntitySyncJob-output.txt 
tailf target/surefire-reports/com.opower.entity.batch.IntTestEntitySyncJob-output.txt 
subl target/surefire-reports/com.opower.entity.batch.IntTestEntitySyncJob-output.txt 
tailf target/surefire-reports/com.opower.entity.batch.IntTestEntitySyncJob-output.txt 
subl target/surefire-reports/com.opower.entity.batch.IntTestEntitySyncJob-output.txt 
whereis zoo.cfg
which zoo.cfg
which zookeeper
zkServer status
subl /usr/local/etc/zookeeper/zoo.cfg
zkServer start
cd entity-sync-job
gds
gpu
git s
git checkout -- src/main/java/com/opower/entity/db/EntitySyncDAO.java
mci -o -e -Dtest=IntTestEntitySyncJob
mvn verify -o -e -Dtest=IntTestEntitySyncJob
mysql -u root
cd entity-attribute-sync-job/
mci -o -e -Dtest=IntTestEntityAttributeSyncJob
mvn test -o -e -Dtest=IntTestEntityAttributeSyncJob
mci -o -e -Dtest=IntTestEntityAttributeSyncJob
mysql -U root -A
mysqlu-U root -A
mysql -u root -A
tailf entity-attribute-sync-job/target/surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
cd site-attribute-service/
mcis -o -e
mysql -u root < site-attribute-db/db/schema-local.ddl 
cd ../entity-attribute-sync-job/
cd target/surefire/
ll
tailf surefire1582347176395057479tmp 
ll
cd ../
ll
tailf surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
subl surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
tailf surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
subl surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
tailf surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
../target
cd ../target
tailf surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
cd ../target
tailf surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
cd ../target
tailf surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
subl surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
cd ../target/
subl surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
tailf surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
zkServer stop
zkServer start
zkServer stop
cd ../..'
cd ../..
cd site-attribute-service/
git s
gdoms
git checkout -- site-attribute-db/db/patches/patch0002_add_default_attribute_metadata_values.sql
go master
gpu
go sa-887_integrate_1
grm
grim
mcis -o -e
gp && w
gp && w
gp && w
gp && w
zkServer start
sudo chown luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err 
mysql.server start
mysql -u root -D poseur_test -A
gp && w
cd entity-attribute-sync-job/
tail target/surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
tailf target/surefire-reports/com.opower.attribute.batch.IntTestEntityAttributeSyncJob-output.txt 
ll
rm -rf target/
ll
rm -rf .idea/
ll
bash_refresh && gp
cd ../sync-job-commons/
gpu
go -b no-refs_update_esc
gp && w
cd site-attribute-service/
go -b sa-991_addl_reader
go -b sa-991_addl_reader_1
mci -o -e
mci -o -e -rf :attribute-services-common-db
tailf ../entity-attribute-sync-job/target/surefire-reports/
jstack
jps -lm
jstack -F -l 77456
mysql -u root < site-attribute-db/db/schema-local.ddl 
gp && w
bash_refresh && gp
mysql -u root -D site_attribute -A
gp && w
cd entity-attribute-sync-job/
mcis -o -e
mysql --version
mysql -u root -D poseur_test -A -e'show create table customer_demographics\G'
sudo chown luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err 
mysql.server start
mysql -u root -D poseur_test -A -e'show create table customer_demographics\G'
gem sources -a http://gemserver.va.opower.it
gem install db-scripts
w
subl Gemfile
mv Gemfile /tmp
cd /tmp
bundle install
backup -c zok1 -e dev -a zok1_report -r local
w
cd spac-seed-data/
backup -c zok1 -e dev -a zok1_report -b zok1_report_dump_2015_03_26.sql
ll
dpdv001
dbdv001
type dbdv001
scp luveen.wadhwani@dbdv001.va.opower.it:/home/luveen.wadhwani/zok1_report_dump_2015_03_26.sql .
./runme.sh 
subl zok1_report_dump_2015_03_26.sql 
mysql -u root -D zok1_report;
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/entity-attribute-sync-job.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/entity-attribute-sync-job.log
mysql -u root -D zok1_report -A
cd ../entity-attribute-sync-job/
git s
mci -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/entity-attribute-sync-job.log
git s
gds
gc -am"[SA-887] Additional cleanup"
git push luveen sa-887_add_null_checks 
git l
go master
gpu
go sa-887_add_null_checks 
grm
git rebase --continue
git l
gds
gdoms
git s
gds
gc -am"Hold on - need to restore enumOrNull"
go master
gpu
go sa-887_add_null_checks 
mci -o -e
git s
gds
gc -am"Restored enumOrNull"
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/entity-attribute-sync-job.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_e1cb2a66-e9d3-4d31-ac0c-10deef1acd85.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_e1cb2a66-e9d3-4d31-ac0c-10deef1acd85.log
mci -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_360c8fd0-c411-4139-aa56-1687fd3f4928.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_27046b6b-bfb9-4633-b8f8-11d0c21fcc5b.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_31a3952e-dcab-4572-a00d-d7958e4d5330.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_a996ec8c-6fc6-4c39-9381-9a36347b7c6a.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_eeba16fc-104a-4302-b3f0-504547dc738e.log
gds
mci -o -e
gc -am"Add UUIDBinaryArgumentFactory; fix a test; debug stmts"
git push luveen sa-887_add_null_checks 
go master
gpu
go sa-887_add_null_checks 
grm
grim
git l
git push -f luveen sa-887_add_null_checks
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
bwdv002
bwqa001
bwqa002
dbqa001
bwst001 
ssh stage-bertha-worker-1002.va.opower.it
gp && w
-
mvn activemq:run zookeeper:start jetty:run
zkServer status
subl /usr/local/etc/zookeeper/zoo.cfg
mvn activemq:run zookeeper:start jetty:run
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Posting job request..." && curl "https://bertha-stage.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-stage.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
gp && w
zkServer status
cd spac-seed-data/
grep 'Dumping data for' zok1_report.no.import_error.no.c_a_n
grep 'Dumping data for' zok1_report.no.import_error.no.c_a_n | subl
grep "Dumping data for " zok1_report.no.import_error.no.c_a_n | subl
dbdv001
zkServer status
subl /usr/local/etc/zookeeper/zoo.cfg
w
cd site-attribute-service/
cd site-attribute-server/
java -jar target/site-attribute-server-0.0.14-SNAPSHOT.jar server src/main/resources/local.yml 
zkServer restart
java -jar target/site-attribute-server-0.0.14-SNAPSHOT.jar server src/main/resources/local.yml 
zkServer status
subl /usr/local/etc/zookeeper/zoo.cfg
zkServer restart
subl /usr/local/etc/zookeeper/zoo.cfg
zkServer restart
java -jar target/site-attribute-server-0.0.14-SNAPSHOT.jar server src/main/resources/local.yml 
gp && w
-
grep "Restoring data for " zok1_report.no.import_error.no.c_a_n
subl $_
grep "Table structure for " zok1_report.no.import_error.no.c_a_n
ll
git s
cd ../entity-attribute-sync-job/
git s
gds
gc -am"Moar clean"
git push luveen sa-887_add_null_checks 
git push -f luveen sa-887_add_null_checks 
mcis -o -e
gds
jar tf target/entity-attribute-sync-job-0.0.1-SNAPSHOT-with-dependencies.jar 
go master
gds
gpu
cd ../site-attribute-service/
go -b no-refs_force_uppercase
gc -am"[NO-REFS] Force uppercase utility codes"
git push luveen no-refs_force_uppercase
mysql -h stage-db-service-1003.va.opower.it -D site -u site -p ebiabhes
mysql -h stage-db-service-1003.va.opower.it -D site -u site -pebiabhes
gp && w
-
mysql -u root -D site_attribute -A
mysql -u root -D site_attribute_test -A
gp && w
ssh prod-service-1030.va.opower.it
gp && w
ssh prod-service-1032.va.opower.it
gp && w
-
deploy_stop
deploy_stop production
deploy_start production
deploy_stop production
cap deploy
cap deploy production
cap production deploy
deploy_start production
deploy_stop production
deploy_start production
deploy_stop production
type deploy_stop production
cap production maintenance:create
cap production --hosts=prod-service-1030.va.opower.it deploy:start
cap production --HOST=prod-service-1030.va.opower.it deploy:start
cap --HOST=prod-service-1030.va.opower.it production deploy:start
cap --host -service-1030.va.opower.it production deploy:start
cap --host prod-service-1030.va.opower.it production deploy:start
cap --hosts prod-service-1030.va.opower.it production deploy:start
HOST=prod-service-1030.va.opower.it cap production deploy:start
HOSTS=prod-service-1030.va.opower.it cap production deploy:start
HOSTS=prod-service-1032.va.opower.it cap production deploy:start
gp && w
ssh prod-service-1030.va.opower.it
gp && w
esj-cli
esj-cli -h
mysql -u root -D site_attribute_test -A
sudo chown luveen.wadhwani:wheel /usr/local/var/mysql/lwadhwani.local.err 
mysql.server start
subl ~/.aliases
bash_refresh && gp
mysql_start
mysql
cd entity-attribute-sync-job/
gd
gids
gds
go -b no-refs_improve_perf
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/5" && echo && echo "Looked."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/5" | jsonpp && echo && echo "Looked."
ssh bwdv002.va.opower.it 
scp /Users/luveen.wadhwani/Downloads/newrelic-java-3.14.0.zip luveen.wadhwani@bwdv002.va.opower.it:/home/luveen.wadhwani
ssh bwdv002.va.opower.it 
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
ssh bwqa002.va.opower.it 
w
cd weather-service
gpu
cd weather-serv
cd weather-server/
deploy_start alpha
ssh dev-service-1010.va.opower.it
gp && w
bwqa002
ssh dev-service-1009.va.opower.it
ssh luveen.wadhwani@dev-service-1009.va.opower.it
ssh --verbose dev-service-1009.va.opower.it
ssh -v dev-service-1009.va.opower.it
gp && w
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"yourkit":"true"}}' && echo && echo "Posted."
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"yourkit":"true"}}' && echo && echo "Posted."
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
gp && w
cd spac-seed-data/
ll
head -n 10 zok1_report_dump_2015_03_26.sql
mysql -u root -D zok1_reportl
mysql -u root -D zok1_report;
mysql -u root -D zok1_report -A
dbdv001
scp luveen.wadhwani@dbdv001.va.opower.it:/tmp/clpp_report_dump_2015_03_31.sql /code/spac-seed-data
mysql -u root < clpp_report_dump_2015_03_31.sql 
mysql -u root -D clpp_report < clpp_report_dump_2015_03_31.sql 
mysql -u root -e'create database clpp_report'
mysql -u root -D clpp_report < clpp_report_dump_2015_03_31.sql 
dbdv001
gp && w
dbdv001
cd entity-
cd entity-attribute-sync-job/
gc -am"[NO-REFS] WIP start using JdbcPagingItemReader"
go master
go -b no-refs_write_perf_test
emptytrash 
go master
bash_refresh && gp
gb -D no-refs_write_perf_test
gb -l
go no-refs_improve_perf 
mysql -u root -D clpp_report
mysql -u root -D clpp_report -A
gp && w
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -D site_attribute -pRaU1eX2F -A
mysql -u root
mysql -u root -D site_attribute -A
gp && w
mysql prod-db-service-1006.va.opower.it
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg -A
type deploy
cd site-attribute-service/
go master
gpu
$TIER=production echo "Stopping..." && deploy_stop $TIER" && sleep 35 && echo && echo "Starting..." && deploy_start $TIER;
$TIER=production echo "Stopping..." && deploy_stop $TIER && sleep 35 && echo && echo "Starting..." && deploy_start $TIER
TIER=production echo "Stopping..." && deploy_stop $TIER && sleep 35 && echo && echo "Starting..." && deploy_start $TIER
echo "Stopping..." && deploy_stop production && sleep 35 && echo && echo "Starting..." && deploy_start production
type deploy_stop
echo "Stopping..." && deploy_stop production && sleep 35 && echo && echo "Starting..." && deploy_start production
cap production maintenance:create;
cd site-attribute-server/
echo "Stopping..." && deploy_stop production && sleep 35 && echo && echo "Starting..." && deploy_start production
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg -A
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg -D site_attribute -e'show tables;'
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg -D site_attribute -e'delete from patches;'
echo "Stopping..." && deploy_stop production && sleep 35 && echo && echo "Starting..." && deploy_start production
echo "Stopping..." && deploy_stop production
echo "Starting..." && deploy_start production
echo "Stopping..." && deploy_stop production
echo "Starting..." && deploy_start production
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg -D site_attribute -e'show tables;'
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg -D site_attribute -e'drop database site_attribute;'
type deploy_stop
cap production maintenance:create
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg -D site_attribute -e'show tables;'
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg -D site_attribute -A
mysql -h prod-db-service-1006.va.opower.it -u site_attribute -pP0dGuaXg
ssh prod-service-1032.va.opower.it
ssh prod-db-service-1006.va.opower.it
w
cd batch/bertha/bertha-agent/
mvn activemq:run zookeeper:start jetty:run
cd ../bertha-scheduler/
mvn activemq:run zookeeper:start jetty:run
mvn -o -e activemq:run zookeeper:start jetty:run
mvn activemq:run zookeeper:start jetty:run
gp && w
-
git stash "Fix DB patches - idempotent, correct instructions, valid usernames"
git stash save "Fix DB patches - idempotent, correct instructions, valid usernames"
gpu
mcis -o -e
mcis -e
java -jar target/site-attribute-server-0.0.15-SNAPSHOT.jar patch src/main/resources/prod.yml 
java -jar target/site-attribute-server-0.0.15-SNAPSHOT.jar patch src/main/resources/local.yml 
..
mcis -o -e
java -jar target/site-attribute-server-0.0.15-SNAPSHOT.jar patch src/main/resources/local.yml 
-
java -jar target/site-attribute-server-0.0.15-SNAPSHOT.jar patch src/main/resources/local.yml 
java -jar target/site-attribute-server-0.0.15-SNAPSHOT.jar server src/main/resources/local.yml 
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
mkdir -p /Users/luveen.wadhwani/Downloads/newrelic/newrelic.jar
mkdir -p /var/poseur/newrelic.agent
sudo mkdir -p /var/poseur/newrelic.agent
subl ~/.aliases 
subl ~/.functions
iown
bash_refresh && gp
iown /var
ll /var/
ll /var/poseur/
iown /var/poseur/
ll /var/poseur/
ll /var/poseur/newrelic.agent/
cp ~/Downloads/newrelic/newrelic.{jar,yml} /var/poseur/newrelic.agent/
iown /var/poseur/newrelic.agent/
ll $_
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_ea67edd2-59b7-4526-894d-12ed24c1e774.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_b567c1e9-2998-4f96-946f-297e4ec82d7b.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_b567c1e9-2998-4f96-946f-297e4ec82d7b.log
w
cd entity-attribute-sync-job/
gc -am"Still WIP"
go master
go -b no-refs_run_local_clpp_for_newrelic
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_091c3719-11e1-4ab9-8ad0-e2da3f831f5d.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_da1e4946-b5b6-461d-8571-41deba471d29.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_fef75187-c244-4a17-85ab-74a84d4dd649.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_c141b0b9-7623-47c2-9ca9-16d88bac0778.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_c141b0b9-7623-47c2-9ca9-16d88bac0778.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_e89e37c0-79c1-4929-a585-69bfa98011dd.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_e89e37c0-79c1-4929-a585-69bfa98011dd.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_e89e37c0-79c1-4929-a585-69bfa98011dd.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"newrelic":"true"}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_6cf20a03-4747-4800-a869-9bed7701bd3b.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_6cf20a03-4747-4800-a869-9bed7701bd3b.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{"yourkit":"true"}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_d0dc31b7-9c94-48a1-8bbd-6de6fbdbfb24.log
subl /Users/luveen.wadhwani/.yjp/log/BerthaJobRunner-6698.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_d0dc31b7-9c94-48a1-8bbd-6de6fbdbfb24.log
less /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_d0dc31b7-9c94-48a1-8bbd-6de6fbdbfb24.log
git s
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
less /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_86978ee2-a49d-4e6b-84b3-077ed0218267.log
_run_local_clpp_for_newrelic
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_7555a802-8f13-475f-b6de-93278a5ff766.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
less /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_80f6b761-d463-46b5-ad59-94678379320c.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
less /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_fd1d5af5-3bcb-497f-a47f-3987c9fc43f1.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
less /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_7a40e980-2364-4d80-8818-28c27bdf2727.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_71b3954f-abef-48fc-ae69-9443a6903642.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_a0a3879c-4104-4c8e-bac9-8b4b1d9a7363.log
zkServer start
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_fc40e576-f909-4889-86b4-f36635805f4e.log,
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_fc40e576-f909-4889-86b4-f36635805f4e.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_140f4d37-80c5-4aa7-9e16-e2b1d357e9d4.log
mysql dev-db-service-1006.va.opower.it
mysql -h dev-db-service-1006.va.opower.it -u site_attribute -p RaU1eX2F -D site_attribute -A
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -A
gp && w
echo "Looking for existing job requests..." && curl "https://bertha-stage.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
ssh bwqa002.va.opower.it
scp /Users/luveen.wadhwani/Downloads/newrelic-java-3.14.0.zip luveen.wadhwani@bwqa002.va.opower.it:/home/luveen.wadhwani
ssh bwqa002.va.opower.it
echo "Posting job request..." && curl "https://bertha.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
gem install esj-cli --remote --source https://nexus.va.opower.it/nexus/content/repositories/opower-gems/
esj-cli -m run --sync -t prod -c CLPP
echo "Posting job request..." && curl "https://bertha.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
jps -lm
cd /code/data/batch/jobs/entity-attribute-sync-job/
ll
jps -lm
kill -9 2937
jps -lm
kill -9 3543
jps -lm
kill -9 4473
jps -lm
kill -9 4902
wc -l /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/logs/bertha-job_entity-attribute-sync-job_clpp_6cf20a03-4747-4800-a869-9bed7701bd3b.log.1
wc -l /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/logs/bertha-job_entity-attribute-sync-job_clpp_6cf20a03-4747-4800-a869-9bed7701bd3b.log.2
wc -l /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/logs/bertha-job_entity-attribute-sync-job_clpp_6cf20a03-4747-4800-a869-9bed7701bd3b.log.3
wc -l /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T/logs/bertha-job_entity-attribute-sync-job_clpp_6cf20a03-4747-4800-a869-9bed7701bd3b.log.4
jps -lm
kill -9 5418
jps -lm
kill -9 6698
w
cd entity-attribute-sync-job/
gds
mcis -o -e
mci' -o -e
mci -o -e
mcis -o -e
gds
git s
git l
gc -am"[NO-REFS] Improve job read/write performance"
gc -am"add luveen todo"
grm
grim
mci -e -o
mci -o -e
gds
mci -o -e
mcis -o -e
gds
gc -am"Add javadoc; cleanup"
grm
grim
git push luveen no-refs_run_local_clpp_for_newrelic
git s
git l
git checkout .
git s
gds
mci -o -e
gc -am"CR feedback round 1"
git push luveen no-refs_run_local_clpp_for_newrelic
mci -e
git s
gc -am"Update s-a-s dep to non-SNAPSHOT"
git push luveen no-refs_run_local_clpp_for_newrelic
go -b no-refs_use_job_exec_ctx
git s
gc -am"WIP"
go no-refs_run_local_clpp_for_newrelic 
git l
go master
gpu
go no-refs_run_local_clpp_for_newrelic 
grm
grim
git push luveen no-refs_run_local_clpp_for_newrelic
git push -f luveen no-refs_run_local_clpp_for_newrelic
git l
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/10" | jsonpp > subl && echo && echo "Looked."
curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/10" | jsonpp > subl
curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/10" | jsonpp
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/10" | grep -C10 SUBMITTED
curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/10" | jsonpp | grep -C20 SUBMITTED
curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/10" | jsonpp
curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" | jsonpp
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/3" && echo && echo "Looked."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/3" | jsonpp && echo && echo "Looked."
gb -l
gds
go master
gpu
go sa-991_addl_reader 
mci -o -e
grm
git rebase --continue
mcis -o -e
git s
gc -am"WIP depending on breaking local s-a-s branch"
git push luveen sa-991_addl_reader
git l
gp && w
ssh prod-service-1032.va.opower.it
cd /code/clients
cd clpp
svn up
mcis -o -e
cp /code/svnwork/clients/clpp/trunk/working/target/client-clpp-4.11.0-SNAPSHOT /code/data/batch/clients/clpp/client.jar
cp -rp /code/svnwork/clients/clpp/trunk/working/target/client-clpp-4.11.0-SNAPSHOT.jar /code/data/batch/clients/clpp/client.jar
tailf /private/var/poseur/newrelic.agent/logs/newrelic_agent.log
subl /private/var/poseur/newrelic.agent/logs/newrelic_agent.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_clpp_86978ee2-a49d-4e6b-84b3-077ed0218267.log
w
cd site-attribute-service/
GDS
gds
go -b no-refs_run_local_clpp_for_newrelic
mci -o -e
jps -lm 
kill -9 18497
jps -lm
kill -9 23769
jps -lm
rm -f /locks/entity-attribute-sync-job/clpp
jps -lm
kill -9 24571
gds
gc -am"[NO-REFS] Skip updating attribute metadata when updating entity attributes"
git push luveen no-refs_run_local_clpp_for_newrelic 
mysql -u root < site-attribute-db/db/schema-local.ddl 
cd site-attribute-server/
java -jar target/site-attribute-server-0.0.15-SNAPSHOT.jar server src/main/resources/local.yml 
git s
git stash save "Attempt to move AttributeMetadataProvider from easj to here"
git s
git l
git s
git stash"WIP Attempt to move AttributeMetadataProvider here from easj"
gds
go master
go -b no-refs_use_easj_job_exec_ctx
gc -am"WIP Add DAO method to fetch all attribute metadata with one query"
go master
gpu
go no-refs_use_easj_job_exec_ctx 
grm
grim
go master
gb -l
go sa-991_addl_reader
gdoms
gds
gdoms
go sa-991_addl_reader
gdoms
go sa-991_addl_reader_1 
grm
grim
go sa-991_addl_reader
grm
grim
go sa-991_addl_reader
go sa-991_addl_reader_1
gds
gdoms
mci -o -e
mci -e
mci -o -e
rm -rf ~/.m2/repository/com/opower/attribute-services-common-db/
rm -rf ~/.m2/repository/com/opower/attribute-services-common-db
mcis -o -e
..
mcis -o -e
git s
gds
mcis -o -e
mci -o -e
git s
gc -am"AttributesRow"
go master
gpu
mci -o -w
mci -o ew
mci -o -e
go sa-991_addl_reader
git l
go master
go sa-991_addl_reader_1 
gdoms
mci -o -e
gc -am"WIP tests not passing"
git push luveen sa-991_addl_reader_1
mci -o -e
mci -o -e -rf :attribute-services-common-db
git push luveen sa-991_addl_reader_1 
git l
git push luveen sa-991_addl_reader_1
go -b sa-991_fix_test
git l
git reset --hard HEAD^1
mci -o -e
git l
git reset --hard HEAD^1
mci -o -e
git l
gdoms
git diff master
go master
gpu
mci -o -e -failIfNoTests=false -Dtest=IntTestEntityAttributeDAO#testConcurrentUpdatesRowDoesNotExist
mci -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO#testConcurrentUpdatesRowDoesNotExist
mysql -u root
cd site-attribute-server/
java -jar target/site-attribute-server-0.0.16-SNAPSHOT.jar server src/main/resources/local.yml 
..
mysql -u root < site-attribute-db/db/schema-local.ddl 
mci -o -e -DfailIfNoTests=false -Dtest=IntTestEntityAttributeDAO#testConcurrentUpdatesRowDoesNotExist
cd ..
git clone https://github.va.opower.it/opower/site-attribute-service.git s-a-s-1
cd s-a-s-1/
mci -o -e
gp && w
echo "Posting job request..." && curl "https://bertha.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
mysql -h dev-db-weather-1001.va.opower.it -u weather_root -p dBtB4ZHsYQR5nq -D weather -A
dbdv001
mysql -h dev-db-weather-1001.va.opower.it -u weather_root -pdBtB4ZHsYQR5nq -D weather -A
git clone https://github.va.opower.it/opower/weather-service-jobs.git
cd weather-service-jobs/
gpu
gds
git stash
gpu
git l
gp && w
git clone https://github.va.opower.it/opower/weather-service-test
ssh bwdv002.va.opower.it
gp && w
cd /Users/luveen.wadhwani/Downloads/9504426dab3969b9b7da4e825ed91d4fc496cb25.signed-shamu-ota-LMY47M-from-LRX22C-fullradio
fastboot flash bootloader bootloader.aboot.img 
adb devices
fastboot flash bootloader bootloader.aboot.img 
adb reboot bootloader
fastboot flash bootloader bootloader.aboot.img 
fastboot flash bootloader bootloader.rpm.img 
fastboot flash bootloader bootloader.sbl1.img 
fastboot flash bootloader bootloader.sdi.img 
fastboot flash bootloader bootloader.tz.img 
fastboot reboot-bootloader
fastboot flash radio radio.mdm1m9kefs1.img 
fastboot flash radio radio.mdm1m9kefs2.img
fastboot flash radio radio.mdm1m9kefs3.img
adb reboot recovery
..
adb sideload 9504426dab3969b9b7da4e825ed91d4fc496cb25.signed-shamu-ota-LMY47M-from-LRX22C-fullradio.zip 
adb devices
adb stop-server
adb kill-server
adb start-server
adb devices
adb reboot bootloader
adb sideload 9504426dab3969b9b7da4e825ed91d4fc496cb25.signed-shamu-ota-LMY47M-from-LRX22C-fullradio.zip 
adb devices
subl ~/.android/adb_usb.ini 
lsusb
brew install lsusb
system_profiler SPUSBDataType
adb kill-server
adb start
adb devices
adb reboot bootloader
adb sideload 9504426dab3969b9b7da4e825ed91d4fc496cb25.signed-shamu-ota-LMY47M-from-LRX22C-fullradio.zip 
adb -v
adb version
brew install adb --version 1.0.32
brew install adb
brew update
cd /Users/luveen.wadhwani/Downloads/minimal_adb_fastboot-master
./install.sh 
gp && w
gp && w
cd batch/bertha/
gpu
git s
git fetch
gp && w
cd batch/bertha
gpu
...
cd site-service
git s
gds
gpu
gp && w
gp && w
cd entity
cd entity-attribute-sync-job/
\git s
gc -am"WIP Processor updating"
git push luveen sa-991_addl_reader
gc -am"Code should work with s-a-s changes; tests pending"
git push luveen sa-991_addl_reader 
emptytrash
mci -o -e
gc -am"almost there - 3 failing tests + 1 commented out"
git push luveen sa-991_addl_reader 
mci -o -e
git s
mci -o -e
git s
gc -am"Almost there - one test case failing"
git push luveen sa-991_addl_reader
mci -o -e
git s
gc -am"still a couple test failures"
git push luveen sa-991_addl_reader
mcis -o -e
mcis -o -e -X
mvn -o -e dependency:tree
mcis -o -e
mci -o -e
gc -am"Tests pass yayyy"
gdoms
go master
gpu
curl github.va.opower.it
curl https://github.va.opower.it
gp && w
-
git s
cd ../site-attribute-service/
gc -am"WIP"
git push luveen sa-991_addl_reader_1
mysql_start
mysql -u root
mysql -u root < site-attribute-db/db/schema-local.ddl 
git s
gc -am"Compiles; tests and rogue concurrent DB attribute updates test pending"
git push luveen sa-991_addl_reader_1 
mci -o -e
mci -o -e -rf :attribute-services-common-db
git s
gds
gc -am"Fix a test"
git push luveen sa-991_addl_reader_1 
gdoms
go master
gpu
go sa-991_addl_reader_1
grm
gdoms
git push -f luveen sa-991_addl_reader_1
mysql -u root -D site_attribute_test
mysql -u root
gp && w
cd entity-attribute-sync-job/
gpu
curl www.google.com
curl www.halo.com
wget http://goodmorningkitten.com/kitten/2575/
gp && w
cd entity-attribute-sync-job/
gpu
go sa-991_addl_reader 
git l
grm
gdoms
mci -o -e
git l
mci -o -e
gds
gc -am"Local review part 1: Minor cleanup"
git push luveen sa-991_addl_reader
git push -f luveen sa-991_addl_reader
git s
mci -o -e
gc -am"Cleanup"
git push luveen sa-991_addl_reader
go -b sa-1073_int_test
go sa-991_addl_reader 
mci -o -e
mysql -u root -D poseur_test
mysql -u root -D poseur_test -A
git s
gc -am"Uncomment a now passing test"
git push luveen sa-991_addl_reader
gp && w
cd site-attribute-service/
mcis -o -e
mysql_start
gds
gc -am"Add equals and hashCode to AttributesRow"
git push luveen sa-991_addl_reader_1
go master
gpu
go sa-991_addl_reader_1 
gdoms
git s
mci -o -e
mci -o -e -rf :attribute-services-common-db
gc -am"Cleanup"
gc --amend
git push luveen sa-991_addl_reader_1
gcc --version
ll /Library/Developer/CommandLineTools/usr
gp && w
cd entity-attribute-sync-job/
git push luveen sa-991_addl_reader 
gp && w
cd entity-attribute-sync-job/
git push luveen sa-991_addl_reader 
go sa-1073_int_test 
git rebase sa-991_addl_reader
go sa-991_addl_reader
git push luveen sa-991_addl_reader 
go sa-1073_int_test 
mysql -u root -D poseur_test -A
cd entity-attribute-sync-job/
git s
gc -am"[WIP] Start on back sync test cases + More cleanup"
git push luveen sa-1073_int_test
sudo killall -HUP mDNSResponder
git push luveen sa-1073_int_test
sudo killall -HUP mDNSResponder
git push luveen sa-1073_int_test
gp && w
cd entity-attribute-sync-job/
gp && w
mysql_start
mysql -u root -D poseur_test -A
gp && w
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_c5668156-5d0c-4c9f-a4e8-ed31f99998b0.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_c5668156-5d0c-4c9f-a4e8-ed31f99998b0.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_97611e74-d289-4618-9e70-010d8a691dd3.log
gp && w
gp && w
gp && w
gp && w
cd entity-attribute-sync-job/
git s
mci -o -e
gc -am"Getting close..."
git push sa-988_cas_writer
git push luveen sa-988_cas_writer
mci -o -e
mci -o -e -Xdebug
mci -o -e -X
mysql_start
mysql -u root -D batch -A
mysqladmin shutdown
sudo mysqladmin shutdown
mysql_start
mysql -u root
cd site-attribute-service/
go master
gpu
go -b no-refs_idempotent_patches
gc -am"[NO-REFS] Make attribute-services-common-db patches idempotent"
git push luveen no-refs_idempotent_patches 
mci -o -e
mci -e
mci -e -rf :attribute-services-common-db
gc -am"Moar"
git push luveen no-refs_idempotent_patches
adb devices
adb copy ~/Downloads/Dungeons\ \&\ Dragons\ –\ Episode\ 26_\ “Into\ the\ Light”\ _\ Tabletop\ Adventures.mp4 /sdcard/Movies
adb push ~/Downloads/Dungeons\ \&\ Dragons\ –\ Episode\ 26_\ “Into\ the\ Light”\ _\ Tabletop\ Adventures.mp4 /sdcard/Movies
mcis -o -e
mci -o -e
mci -o -e -rf :attribute-services-common-translation
cd site-attribute-db/db/
mysql -u root < schema-local.ddl 
zkServer start
sudo mysqladmin shutdown
mysql_start
gp && w
cd site-attribute-service/
cd customer-attribute-db/
mysql -u root < db/schema-local.ddl 
zkServer status
subl /usr/local/etc/zookeeper/zoo.cfg
zkServer start
...
cd site-attribute-service/
mci -o -e
rm -rf ~/.m2/repository/com/opower/attribute-services-common-*
mci -o -e
jar xf keyMappings.yaml ~/.m2/repository/com/opower/attribute-services-common-translation/0.0.17-SNAPSHOT/attribute-services-common-translation-0.0.17-SNAPSHOT.jar 
jar tf  ~/.m2/repository/com/opower/attribute-services-common-translation/0.0.17-SNAPSHOT/attribute-services-common-translation-0.0.17-SNAPSHOT.jar 
jar xf com/opower/attribute/translation/keyMappings.yaml ~/.m2/repository/com/opower/attribute-services-common-translation/0.0.17-SNAPSHOT/attribute-services-common-translation-0.0.17-SNAPSHOT.jar 
unzip ~/.m2/repository/com/opower/attribute-services-common-translation/0.0.17-SNAPSHOT/attribute-services-common-translation-0.0.17-SNAPSHOT.jar com/opower/attribute/translation/keyMappings.yamlcom/opower/attribute/translation/keyMappings.yaml
unzip ~/.m2/repository/com/opower/attribute-services-common-translation/0.0.17-SNAPSHOT/attribute-services-common-translation-0.0.17-SNAPSHOT.jar keyMappings.yaml
jar xf ~/.m2/repository/com/opower/attribute-services-common-translation/0.0.17-SNAPSHOT/attribute-services-common-translation-0.0.17-SNAPSHOT.jar 
ll
subl com/opower/attribute/translation/keyMappings.yaml 
w
git clone https://github.va.opower.it/opower/weather-service-jobs.git
cd weather-service-
..
cd weather-service-jobs/
gpu
dbdv001
rmysql
telnet localhost 58045
rmysql
telnet localhost 58045
ssh -AL 58045:localhost:3306 dbdv001 sleep 5000 &
ssh -AL 58045:localhost:3306 dbdv001 sleep 5000
ssh -ALv 58045:localhost:3306 dbdv001 sleep 5000
ssh -AL 58045:localhost:3306 dbdv001 sleep 5000
echo $LOCAL_PORT
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT} &
telnet localhost 58045
gp && w
mysql -u root -D site_attribute -A
gp && w
cd site-attribute-service/
gds
gc -am"Correct types for thermostat attributes"
git push luveen no-refs_idempotent_patches 
go master
gpu
mci -o -e
mcis -o -e
cd site-attribute-server
..
mysql -uroot < site-attribute-db/db/schema-local.ddl 
cd site-attribute-server/
zkServer start
ll
java -jar target/site-attribute-server-0.0.17-SNAPSHOT.jar server src/main/resources/local.yml
ps aux | grep sshn
ps aux | grep ssh
kill -9 10778
ps aux | grep ssh
jps -lm
kill -9 15469
jps -lm
kill -9 17907
jps -lm
kill -9 20498
jps -ln
jps -lm
kill -9 24932
gp && w
cd entity-attribute-sync-job/
mci -o -e
mvn failsafe:integration-test
mvn -o -e failsafe:integration-test
mvn -o -e integration-test
mci -o -e
git s
gc -am"Generifying"
git push luveen sa-988_cas_writer
git s
gc -am"Use TestExecutionListeners. Still not working"
git push luveen sa-988_cas_writer 
git s
ps aux | grep ssh
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{"-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8140"}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{"jvmOptions": "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8140"}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{"jvmOptions": "-agentlib:jdwp=transport=dt_socket\,server=y\,suspend=n\,address=8140"}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{"jvmOptions": "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8140"}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
gc -am"Got further! But test case still failing"
git push luveen sa-988_cas_writer
git s
gc -am"Test pass yayyyyyyyyy"
git push luveen sa-988_cas_writer
go master
gpu
go sa-988_cas_writer 
mci -o -e
gc -am"nope - actually tests don't pass"
git push luveen sa-988_cas_writer 
mci -o -e
gc -am"Much Success. TM"
git push luveen sa-988_cas_writer 
grm
git l
git rebase --continue
ga src/main/java/com/opower/attribute/db/ReportSiteParcelDAO.java
git rebase --continue
ga src/main/java/com/opower/attribute/batch/writer/AbstractAttributeSyncItemWriter.java
git rebase --continue
git s
git rm src/main/java/com/opower/attribute/batch/writer/AbstractAttributeSyncItemWriter.java
git rebase --continue
ga src/main/java/com/opower/attribute/batch/AttributeSyncStepContextListener.java
git rebase --continue
ga src/test/java/com/opower/attribute/batch/writer/TestReportSiteParcelWriter.java src/test/java/com/opower/attribute/batch/processor/TestSiteAttributeServiceToReportDBSyncItemProcessor.java
git rebase --continue
ga src/main/java/com/opower/attribute/batch/reader/SiteAttributeServiceToReportDBSyncItemReader.java src/test/java/com/opower/attribute/batch/processor/TestReportSiteParcelItemProcessor.java src/test/java/com/opower/attribute/batch/processor/TestSiteAttributeServiceToReportDBSyncItemProcessor.java src/test/java/com/opower/attribute/batch/reader/TestSiteAttributeServiceToReportDBSyncItemReader.java src/test/java/com/opower/attribute/batch/writer/TestReportSiteParcelWriter.java
git rebase --continue
ga src/test/java/com/opower/attribute/batch/reader/TestSiteAttributeServiceToReportDBSyncItemReader.java
git rebase --continue
git s
rm src/main/java/com/opower/attribute/batch/reader/ReportSiteParcelItemReader.java~HEAD
git rebase --skip
git rebase --continue
ga src/main/resources/config/jobComponents.xml
git rebase --continue
git rebase --continue | subl
ga src/main/java/com/opower/attribute/batch/site/ReportSiteParcelItem.java src/main/java/com/opower/attribute/batch/site/db/ReportSiteParcelDAO.java src/main/java/com/opower/attribute/batch/site/processor/ReportSiteParcelItemProcessor.java src/main/java/com/opower/attribute/batch/site/processor/SiteAttributeServiceToReportDBSyncItemProcessor.java src/main/java/com/opower/attribute/batch/site/writer/ReportSiteParcelItemWriter.java src/main/java/com/opower/attribute/batch/util/AttributeSyncPropertyUtils.java src/main/resources/config/jobComponents.xml src/test/java/com/opower/attribute/batch/AttributeSyncJobTestData.java src/test/java/com/opower/attribute/batch/TestParcel.java src/test/java/com/opower/attribute/batch/reader/TestReportSiteParcelItemReader.java src/test/java/com/opower/attribute/batch/reader/TestSiteAttributeServiceToReportDBSyncItemReader.java src/test/java/com/opower/attribute/batch/site/db/IntTestReportSiteParcelDAO.java src/test/java/com/opower/attribute/batch/site/db/ReportSiteParcelDAOTestHelper.java src/test/java/com/opower/attribute/batch/site/processor/TestSiteAttributeServiceToReportDBSyncItemProcessor.java src/test/java/com/opower/attribute/batch/site/writer/TestReportSiteParcelWriter.java src/test/java/com/opower/attribute/batch/site/writer/TestSiteAttributeServiceItemWriter.java
git rebase --continue
ga src/main/java/com/opower/attribute/batch/AttributeSyncStepContextListener.java
git rebase --continue
ga src/main/java/com/opower/attribute/batch/AbstractAttributeDTOWrapper.java src/main/java/com/opower/attribute/batch/site/writer/ReportSiteParcelItemWriter.java src/main/java/com/opower/attribute/batch/writer/DatabaseWriteMeasuringItemWriter.java src/test/java/com/opower/attribute/batch/site/SiteAttributeSyncTestData.java
git rebase --continue
ga src/test/java/com/opower/attribute/batch/AttributeSyncJobTestData.java src/test/java/com/opower/attribute/batch/site/writer/TestSiteAttributeServiceItemWriter.java
git rebase --continue
mci -o - e
mci -o -e
jps -lm
kill 88792
kill 87735
kill 88792
jps -lm
zkServer stop
zkServer start
mci -o -e
git s
gc -am"Rebase"
git push luveen sa-988_cas_writer
git push -f luveen sa-988_cas_writer
git s
gc -am"Config cleanup"
git push luveen sa-988_cas_writer 
mci -o -e
gc -am"Moar Cleanup"
git push luveen sa-988_cas_writer 
go master
gpu
go sa-988_cas_writer 
grm
grim
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
jps -lm
kill -9 13448
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_61fe2198-4233-4361-8e18-532238c32bb6.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_9a6f5605-2d1a-4e9f-8f46-d1e74983a166.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_067fa7d0-5f2f-4b26-8207-71f580f14fb6.log
git s
gds
gp && w
cd site-attribute-service/
git s
gc -am"remove luveen todo; @Ignore randomly failing test"
git push luveen no-refs_idempotent_patches 
go master
gpu
go no-refs_idempotent_patches 
mcis -o -e
gc -am"One more idempotency fix"
git push luveen no-refs_idempotent_patches
mci -o - e
mci -o -e
git l
go master
gpu
go no-refs_idempotent_patches
grm
grim
git push -f luveen no-refs_idempotent_patches
ssh qa-jenkins-slave-1006
gp && w
cd entity-attribute-sync-job/
go master
git stash save "[SA-1093] Confirmed works properly locally"
go master
go -b sa-1093_respect_high_watermark
git stash apply
git s
grm
gds
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_0e50cb38-fd6d-43e3-9a38-16ede24290f3.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_8bb5bba7-b149-4abc-84de-ff45423672f2.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_8bb5bba7-b149-4abc-84de-ff45423672f2.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_e74133df-3863-482a-9864-eb3ea0f5a7b1.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_f59feae8-b573-47c9-b0a3-5afbdb8ae56a.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_1c233912-2720-4f4b-a3a8-fec4bf3364c0.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_4c99236e-21b6-4c6e-9436-0be7f880f299.log
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_0d57b943-d1e3-4202-b2a6-72d4edae0c1c.log
gds
mci -o -e
git s
gds
gc -am"Int test for sync job works"
mci -e
git push luveen sa-1093_respect_high_watermark 
git l
gc --amend
git push -f luveen sa-1093_respect_high_watermark 
mci -o -e
git s
gc -am"Attempt to fix Jenkins PR build failure"
git push luveen sa-1093_respect_high_watermark 
git s
go master
gpu
go sa-1093_respect_high_watermark 
grm
grim
git push -f luveen sa-1093_respect_high_watermark 
go master
go sa-988_cas_writer 
mci -o -e
mci -e
git s
gc -am"Update s-a-s dep version"
git l
go master
gpu
go sa-988_cas_writer 
grm
grim
git push -f luveen sa-988_cas_writer
mci -o -e
go master
go sa-1073_int_test
git l
grm
grim
mci -o -e
gc -am"Update s-a-s dep version"
grm
grim
git push -f luveen sa-1073_int_test 
git s
gds
gc -am"Cleanup"
git push luveen sa-1073_int_test 
mvn -Dit.test=IntTestSiteAttributeSync -o -e verify
git s
mvn -Dit.test=IntTestSiteAttributeSync -o -e verify
mci -o -e
git s
gds
mci -o -e
gc -am"Fixed intermittent test failure (I think)."
git push luveen sa-1073_int_test 
gc -am"Add back curatorContext"
git push luveen sa-1073_int_test
git s
gc -am"Sync high watermark to prevent report to sas sync from running"
mci -o - e
mci -o  -e
git push luveen sa-1073_int_test 
gp && w
ssh qa-jenkins-slave-1006
ssh qa-jenkins-slave-1004
ssh qa-jenkins-slave-1006
ssh qa-jenkins-slave-1013
zkServer stop
gp && w
ssh stage-app-1001.va.opower.it
ssh -v stage-app-1001.va.opower.it
rm -rf /var/folders/
sudo rm -rf /var/folders/
brew install wireshark
brew install wireshark -g
gp && w
dbdv001
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_f6014d18-7f05-44a1-a272-430a0807dfdc.log
zkServer stop
subl /usr/local/etc/zookeeper/zoo.cfg
zkServer start
mysql -u root -D site_attribute -A
subl /usr/local/etc/zookeeper/zoo.cfg
zkServer start
zkServer staop
zkServer stop
zkServer start
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_8f25e0d8-6219-4a46-b784-da664afd2982.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_8f25e0d8-6219-4a46-b784-da664afd2982.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_29fd6fe3-7de3-41ba-b4ff-48ba953cf88b.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_55fbc1fc-158c-4c71-8984-8aa00a40afca.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_b6e2d146-b3b1-42a3-bdb0-3b3ca9f90777.log
subl $_
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_63e63760-5f43-4b36-9658-648f8beabfa8.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_9f0c18fa-13fd-4fe4-9cda-af44bd38af94.log
dppr001
ssh dppr001
alias dppr001
ssh -v dppr001.va.opower.it
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_df20d530-426a-491f-904d-f9ea079a7fe1.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_1bec704b-9873-4538-a1f6-2ddd2e79ee98.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_c210184a-a363-4d63-9f56-d7c719e27c81.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_1db94f3c-d7b1-4007-b71c-bc165fae51da.log
cd entity-sync-job/
gpu
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT} &
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT}
rmysql
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT}
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT} &
echo $LOCAL_PORT
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT} &
gds
go -b sa-1093_compare_w_easj
mysql -u root -D site_attribute -A
mcis -o -e
mcis -e
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha_entity-sync-job_zok1_1549d4e9-8203-48e0-991a-0b7871bf14cc.log
gc -am"point local job to dev db"
go master
gpu
go sa-1093_compare_w_easj
grm
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha_entity-sync-job_zok1_bece52e4-da11-4ebf-8f15-c8be75e91454.log
mysql -u root -D site_attribute -A
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mysql -u root -D site_attribute -A
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mysql -u root -D site_attribute -A
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
gds
gc -am"Save config changes made for comparing with easj"
git push luveen sa-1093_compare_w_easj
mysql -u root -D site_attribute -A
mysql -u root -D poseur_test -A
gp && w
mysql_start
mysql -u root
cd batch/bertha/bertha-scheduler/
-
pushd /code/batch/bertha/bertha-scheduler/ && mvn activemq:run zookeeper:start jetty:run && popd
pushd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run && popd
pushd /code/batch/bertha/bertha-scheduler/ && mvn -o -e -Xdebug -Xrunjdwp:transport=dt_socket\,server=y\,suspend=y\,address=8140 activemq:run zookeeper:start jetty:run && popd
pushd /code/batch/bertha/bertha-scheduler/ && mvn -e -Xdebug -Xrunjdwp:transport=dt_socket\,server=y\,suspend=y\,address=8140 activemq:run zookeeper:start jetty:run && popd
pushd /code/batch/bertha/bertha-scheduler/ && mvn -e -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8140 activemq:run zookeeper:start jetty:run && popd
MAVEN_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8140" mvn -o -e activemq:run zookeeper:start jetty:run && popd
MAVEN_OPTS="$MAVEN_OPTS -DCONFIG_SERVICE_ENDPOINT=http://config.va.opower.it/api -DCONFIG_TIER=local" mvn -o -e activemq:run zookeeper:start jetty:run && popd
mvn -o -e activemq:run zookeeper:start jetty:run && popd
MAVEN_OPTS="$MAVEN_OPTS -DCONFIG_SERVICE_ENDPOINT=http://config.va.opower.it/api -DCONFIG_TIER=local" mvn -o -e activemq:run zookeeper:start jetty:run && popd
MAVEN_OPTS="$MAVEN_OPTS -DCONFIG_SERVICE_ENDPOINT=http://config.va.opower.it/api -DCONFIG_TIER=local" mvn -o -e activemq:run zookeeper:start jetty:run
w
cd site-attribute-service/
gb -l
go no-refs_use_easj_job_exec_ctx
gdoms
go master
gb -l
gp no-refs_idempotent_patches
go no-refs_idempotent_patches
gdoms
git push luveen no-refs_idempotent_patches 
grm
grim
gc --amend
git push -f luveen no-refs_idempotent_patches 
gc --amend
git push luveen -f no-refs_idempotent_patches 
go master
gpu
gds
go no-refs_idempotent_patches
gc -am"Update release notes"
go master
gpu
go no-refs_idempotent_patches
grm
git rebase --continue
git l
grim
git push -f luveen no-refs_idempotent_patches 
pushd /code/batch/bertha/bertha-scheduler/ && mvn activemq:run zookeeper:start jetty:run && popd
pushd /code/batch/bertha/bertha-scheduler/ && mvn -o -e activemq:run zookeeper:start jetty:run && popd
mysql -u root -D poseur_test -A
gp && w
/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/bin/java; exit;
gp && w
jvisualvm 
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
mysql_start
cd entity-attribute-sync-job/
gds
mci -o -e
git push luveen sa-1093_respect_high_watermark 
gc -am"CR feedback round 1 - tests cleanup"
git push luveen sa-1093_respect_high_watermark 
mci -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_5eaceea6-0163-46d3-915a-392c88dd4bac.log
gds
gc -am"CR feedback round 1 - remove explicit StepScope declaration"
git push luveen sa-1093_respect_high_watermark 
brew install visualvm
brew update Caskroom/cask/visualvm
brew upgrade
brew install makedepend
brew upgrade
java -jar /Users/luveen.wadhwani/Downloads/samurai.jar
java -jar /Users/luveen.wadhwani/Downloads/jca457.jar
gp && w
cd clients
ll
cd bgec/
svnup
svn up
..
cd cec
svn up
subl .
..
cd bgec/
subl .
svn info
java -jar /Users/luveen.wadhwani/Downloads/samurai.jar &
java -jar /Users/luveen.wadhwani/Downloads/tda-bin-2.2/tda.jar
java -jar /Users/luveen.wadhwani/Downloads/samurai.jar
java -jar /Users/luveen.wadhwani/Downloads/tda-bin-2.2/tda.jar
gp && w
cd batch/bertha/bertha-scheduler/
mvn -o -e activemq:run zookeeper:start jetty:run
jvisualvm 
gp && w
grep -on "(state = .*)" ~/Documents/development/5.6/sa-1097_cec_scrapi/SYS-18071/jstack_cec_2015051823141432005259.out | uniq | subl
/usr/bin/grep -on "(state = .*)" ~/Documents/development/5.6/sa-1097_cec_scrapi/SYS-18071/jstack_cec_2015051823141432005259.out | uniq | subl
man uniq
/usr/bin/grep -on "(state = .*)" ~/Documents/development/5.6/sa-1097_cec_scrapi/SYS-18071/jstack_cec_2015051823141432005259.out | uniq | subl
/usr/bin/grep -on "(state = .*)" ~/Documents/development/5.6/sa-1097_cec_scrapi/SYS-18071/jstack_cec_2015051823141432005259.out | tr : " " | uniq | subl
/usr/bin/grep -on "(state = .*)" ~/Documents/development/5.6/sa-1097_cec_scrapi/SYS-18071/jstack_cec_2015051823141432005259.out | tr : " " | uniq -f 1 | subl
tracerout https://mashery-api.opower.com/v1/cec/customer
traceroute https://mashery-api.opower.com/v1/cec/customer
traceroute mashery-api.opower.com
gp && w
adb devices
adb shell pm set-install-location 2
adb shell pm get-install-location
java -version
for i in $(seq 1 50000); do curl "https://scrapi-stage.opower.com/v1/cec/customers?accountNumber=0045144198" & done
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
cd entity-attribute-sync-job/
go master
git stash
go master
go sa-988_cas_writer 
git stash apply
git s
mci -o -e
mysql_start 
mci -o -e
gc -am"Remove builder"
git push luveen sa-988_cas_writer 
echo $CONFIG_DOMAIN
go master
go -b no-refs_oome_debug
git s
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
open /code/clients/zok1
mcis -o - e
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
man time
bwqa002
mysql -D batch -u root -A
mysql -D site_attribute -u root -A
mysql -D zok1_report -u poseur -pposeur -h report-zok1-qa.va.opower.it -P 3306 -A
brew install s3cmd
s3cmd
time s3cmd get s3://weather-archive-by-date/2015/05/01/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json
subl /Users/luveen.wadhwani/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json
time s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json
rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json
for true; do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json; done
for 1; do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json; done
for 1; do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time %e s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time %e s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json | ; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time -f %e s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json | ; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time -f '%e' s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json | ; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time -f '%e' s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json ; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time -f %e s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json ; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json ; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json | /usr/bin/grep real; done
for (( ; ; )); do rm -f ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json && time -p s3cmd get s3://weather-archive-by-date/2015/05/15/icao_ESNQ.json ~/Documents/development/5.6/sa-1105_weather_scrape/icao_ESNQ.json; done
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_e5282833-267c-44f0-8018-8e57f2ee6180.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_186b3f34-a038-4097-8750-75c08783405c.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_2e1cd9d3-955f-4653-bb9b-04913dc19834.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_5e674765-ab94-497c-984e-b7935836b101.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_aa986980-d5f0-4982-ba26-1d9480d91df7.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_6e35ad7c-e50a-4201-bfa2-e9295f811d5c.log
rmysql
which rmysql
whereis rmysql
alias rmysql
type rmysql
type parseArgs
 mysql -A -uxxx -papaephoofies --host=localhost --port=58045 --protocol=TCP --prompt="mysql@${HOST}:\\d> " "xxx"
rmysql dbqa001 xxx
type rmysql
echo $jdbc_username
jdbc_username=xxx
echo $jdbc_username
jdbc_password=apaephoofies
echo $jdbc_password 
rmysql dbqa001 xxx
ssh -AL 35046:localhost:3306 dbqa001.va.opower.it sleep 5000 &
ps aux | grep ssh
kill -9 24035
ssh -AL 35046:localhost:3306 dbqa001.va.opower.it sleep 5000
rmysql dbqa001 xxx
type rmysql
ssh_tunnel dbqa001 40 3306 dc6
mysql -A -uxxx -papaephoofies --host=localhost --port=58045 --protocol=TCP --prompt="mysql@${HOST}:\\d> " "xxx"
rmysql
rmysql dbqa001 xxx
man telnet
telnet dbqa001
rmysql 
rmysql dbqa001 xxx
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT} &
echo $LOCAL_PORT 
rmysql dbqa001 xxx
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT} &
rmysql dbqa001 xxx
ssh -AL ${LOCAL_PORT}:localhost:${SSH_TUNNEL_PORT} ${SSH_TUNNEL_HOST} sleep ${SSH_TUNNEL_TIMEOUT}
mysql -A -uxxx -papaephoofies --host=localhost --port=30546 --protocol=TCP --prompt="mysql@${HOST}:\\d> " "xxx"
mysql -A -uxxx -papaephoofies --host=dbqa001.va.opower.it --port=30546 --protocol=TCP --prompt="mysql@${HOST}:\\d> " "xxx"
mysql -A -uxxx -papaephoofies --host=report-xxx-qa.va.opower.it --port=30546 --protocol=TCP --prompt="mysql@${HOST}:\\d> " "xxx"
man ssh
ssh -fAL 58045:dbqa001.va.opower.it:3306 sleep 5000
rmysql dbqa001 xxx
ssh -AL 30546:dbqa001.va.opower.it:3306 sleep 5000 &
ps aux | grep ssh
kill -9 47287
kill -9 46758
kill -9 28718
kill -9 28517
ssh -AL 30546:dbqa001.va.opower.it:3306 sleep 5000
rmysql dbqa001 xxx
ssh -AL 30546:dbqa001.va.opower.it:3306 sleep 5000
ssh -AL 30546:localhost:3306 dbqa001.va.opower.it sleep 5000
ll
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_af941924-d21a-4b00-b630-76ee7b268f58.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_15bdbcaf-8fef-44ad-8e3a-61484b2a0049.log
ps aux | grep ssh
w
ps aux | grep ssh
jps -lm
kill -9 71315
ssh dev-db-service-1002.va.opower.it
brew install jasypt
cd entity-attribute-sync-job/
mcis -o -e
bwqa002
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
dbqa001
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
bwqa002
whereis decrypt.sh
which decrypt.sh
/code/whatisthis-infrastructure/machines/dev/home/build/bin/jasypt/decrypt.sh input="lGOo2XTxZyrHMdCCFyg1dny4pwJNYecB" password="n2958uxBfJGr"
cd /code/whatisthis-infrastructure/machines/dev/home/build/bin/jasypt
decrypt.sh input="lGOo2XTxZyrHMdCCFyg1dny4pwJNYecB" password="n2958uxBfJGr"
./decrypt.sh input="lGOo2XTxZyrHMdCCFyg1dny4pwJNYecB" password="n2958uxBfJGr"
-
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
cd /code/whatisthis-infrastructure/machines/dev/home/build/bin/jasypt
./decrypt.sh input="em9rMV9yZXCEQeQoSXlCRY2iV1DZL7O3" password="n2958uxBfJGr"
./decrypt.sh input="lGOo2XTxZyrHMdCCFyg1dny4pwJNYecB" password="n2958uxBfJGr"
mcis -o -e
w
cd entity-attribute-sync-job/
w
-
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
rmysql
type rmysql
echo $LOCAL_PORT
type rmysql
mysql -P 58045
mysql -P 30546
mysql -P 30546 -u xxx -papaephoofies -A
mysql -P 30546 -u xxx -papaephoofies -D xxx_report -A
mysql -h localhost -P 30546 -u xxx -papaephoofies -D xxx_report -A
mysql -h dbqa001.va.opower.it -P 30546 -u xxx -papaephoofies -D xxx_report -A
mysql -P 30546 -u xxx -papaephoofies -D xxx_report -A
mysql -h localhost -P 30546 -u xxx -papaephoofies -D xxx_report -A
type rmysql
mysql -A -uxxx -papaephoofies --host=localhost --port=30546 --protocol=TCP "xxx"
telnet localhost 30546
mysql -A -uxxx -papaephoofies --host=localhost --port=30546 --protocol=TCP "xxx"
mysql -A -ujenkins -pvolTm3ter --host=localhost --port=30546 --protocol=TCP "xxx"
mysql -A -ujenkins -pvolTm3ter --port=30546 --protocol=TCP "xxx"
mysql -A -ujenkins -pvolTm3ter --port=30546 --protocol=TCP
mysql -A -ujenkins -pvolTm3ter --port=30546 --protocol=TCP -Dxxx_report
mysql -A -uxxx -papaephoofies --port=30546 --protocol=TCP -Dxxx_report
mysql -A -uxxx_report -papaephoofies --port=30546 --protocol=TCP -Dxxx_report
subl ~/.functions
bash_refresh 
report_db_tunnel 
report_db_tunnel dbqa001.va.opower.it
bash_refresh 
gp
report_db_tunnel dbqa001.va.opower.it
ps aux | grep ssh
kill -9 50293
kill -9 63605
ps aux | grep ssh
bash_refresh && gp
report_db_mysql 
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
./decrypt.sh input="lGOo2XTxZyrHMdCCFyg1dny4pwJNYecB" password="n2958uxBfJGr"
ew
w
mv whatisthis-infrastructure infrastructure
cd /code/infrastructure/machines/dev/home/build/bin/jasypt
./decrypt.sh input="lGOo2XTxZyrHMdCCFyg1dny4pwJNYecB" password="n2958uxBfJGr"
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
w
cd entity-attribute-sync-job/
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
jps -lm
kill -9 7658
kill -98 67839
kill -9 67839
mysql -u root
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
gds
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
perl
awk '{s+=$1} END {printf "%.0f", s}' ~/Documents/development/5.6/sa-1094_easj_oome/blob\ read\ sizes.txt 
mcis -o -e
rm -f /Users/luveen.wadhwani/.m2/repository/com/opower/attribute-services-common-db/0.0.19-SNAPSHOT/attribute-services-common-db-0.0.19-SNAPSHOT.jar
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
emptytrash 
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
mcis -o -e
mci -o -e
git s
gc -am"Paged queries"
git push luveen no-refs_oome_debug
mci -o -e
mci -o -e -Dit.test=IntTestPagingSiteAttributeDAO#testSelectByUpdatedAtRange
mci -o -e -DskipTests=true -Dit.test=IntTestPagingSiteAttributeDAO#testSelectByUpdatedAtRange
mci -o -e -Dit.test=IntTestPagingSiteAttributeDAO#testSelectByUpdatedAtRange
git s
gc -am"Code changes complete; some test cases failing due to Spring not playing"
git push luveen no-refs_oome_debug 
man mvn
mvn help
mvn -h
mci -o -e -Dit.test=IntTestPagingSiteAttributeDAO#testSelectByUpdatedAtRange
mci -e -Dit.test=IntTestPagingSiteAttributeDAO#testSelectByUpdatedAtRange
mci -o -e -Dit.test=IntTestPagingSiteAttributeDAO#testSelectByUpdatedAtRange
gp && w
mysql -u site_attribute -p RaU1eX2F -D site_attribute -A
mysql -u site_attribute -pRaU1eX2F -D site_attribute -A
ssh dev-service-1016.va.opower.it
mysql -u site_attribute -pRaU1eX2F -D site_attribute -A
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -A
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_6041811e-34b1-457c-963e-008924972e76.log
bash_refresh && gp
report_db_tunnel 
report_db_tunnel 9001 dbqa001.va.opower.it
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_a4de20ca-2b13-4427-84e5-041e17798594.log
bwqa002
w
cd entity-attribute-sync-job/
gds
gc -am"Config change to run with XXX against qa"
go master
go sa-988_cas_writer 
report_db_tunnel 
ps aux | grep ssh
man ssh-agent
report_db_tunnel 
report_db_tunnel 9001 dbqa001.va.opower.it
ps aux | grep ssh
report_db_mysql 9001 dbqa001.va.opower.it
report_db_mysql 9001 dbqa001.va.opower.it xxx_report jenkins volTm3ter
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e clean activemq:run zookeeper:start jetty:run
gp && w
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_2c10dcc3-34f8-45a3-9377-433546aa2e8a.log
jps -lm
kill -9  32358
jps -lm
kill -9 35365
jps -lm
kill -9 39694
jps -lm
kill -9 40622
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_cf1dd006-7725-42f9-bb6b-c198520601a5.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_3afbc45a-770d-4950-93cf-cb18c8b58906.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_775252a7-f6e0-49c5-aa74-36c02217a018.log
jps -lm
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_82534724-65ed-443f-a751-a3c3367b6f55.log
jps -lm
kill -9 65485
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_2b5c1f59-d735-4291-9d48-35153887aedf.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_35b15de1-ce1a-48d3-9c1a-3efff6f84e45.log
jps -lm
kill -9 612
jps -lm
kill -9 1755
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_6196484a-624a-4a29-add4-a371a7ee81ee.log
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_e272ad3d-19a5-4efe-b7ec-a73c11626b9c.log
jps -lm
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_e272ad3d-19a5-4efe-b7ec-a73c11626b9c.log
subl $_
mysql
mysql -D site_attribute_test -A
mysql -D site_attribute_test -u site_attribute_test -A
mysql -D site_attribute_test -u root -A
rm -rf ~/.m2/repository/*
ll $_
ll ~/.m2/repository
gp && w
cd clients/xxx
open
open .
CLIENT=xxx; pushd /code/clients/${CLIENT} && echo "Building..." && mcis -o -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-5.7.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
CLIENT=xxx; pushd /code/clients/${CLIENT} && echo "Building..." && mcis -e && echo "Completed build." && echo && echo "Copying jar..." && cp target/client-${CLIENT}-5.7.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar && popd && echo "Done." && echo
cp -rp /Users/luveen.wadhwani/.m2/repository/com/positiveenergyusa/client-xxx/5.7.0-SNAPSHOT/client-xxx-5.7.0-SNAPSHOT.jar /code/data/batch/clients/xxx/client.jar
man cp
man mkdir 
mkdir -p /code/data/batch/clients/${CLIENT}/ && cp -rp target/client-${CLIENT}-5.7.0-SNAPSHOT.jar /code/data/batch/clients/${CLIENT}/client.jar
git clone --recursive git@github.com:luveenw/dotphiles.git ~/.dotfiles
git clone --recursive https://github.com/luveenw/dotphiles.git ~/.dotfiles
cd .dotfiles/
ll
..
subl ~/.bash_profile 
ls | grep -ef "^."
ls | grep -f "^."
ls | egrep -f "^."
ls -al
ll
ll | egrep -f "^."
ll | grep -ef "^."
ll | grep -ef "."
ll | grep -ef '.'
ls .*
ls .[^.]*
find . -iname ">8"
find . -iname ".*"
find . -iname ".*" --maxdepth=1
find . -iname ".*" --depth=1
find . -iname ".*" --depth 1
find . -iname ".*" -d 1
find . -iname ".*" -d 1 | subl
ls .chef/
find . -iname ".*" -d 1 -type f | subl
find . -iname ".*" -d 1 -type f
find . -iname ".*" -d 1 -type f | subl
gp
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do echo cp $f ~/.dotfiles/$($f | cut -c2-)
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do echo cp $f ~/.dotfiles/$($f | cut -c2-); done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do echo dotfiles/$($f | cut -c2-); done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do echo dotfiles/`$f | cut -c2-`; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do echo "dotfiles/"$f | cut -c2-; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$($f | cut -c2-); echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$f | cut -c2-; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$f | cut -c2-; echo "nf: $nf"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -c2-`; echo "nf: $nf"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -c2-`; echo "nf: ${nf}"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -d. -c1`; echo "nf: ${nf}"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -d . -f 1`; echo "nf: ${nf}"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -d .`; echo "nf: ${nf}"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -f 1 -d .`; echo "nf: ${nf}"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -f 0 -d .`; echo "nf: ${nf}"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -f 2 -d .`; echo "nf: ${nf}"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=`$f | cut -c2-`; echo "nf: $($f | cut -c2-)"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$($f | cut -c2-); echo "nf: ${nf}"; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$($f | cut -c2-); echo nf: $nf; echo cp $f .dotfiles/$nf; done
echo $nf
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$(echo $f | cut -c2-); echo nf: $nf; echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$(echo $f | cut -c2-); echo cp $f .dotfiles/$nf; done
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$(echo $f | cut -c2-); cp $f .dotfiles/$nf; done
open ~/.dotfiles/
for f in .account .aliases .anyconnect .bash_history .bash_profile .bash_prompt .bashrc .cask .curlrc .exports .extra .functions .gemrc .git-completion.bash .gitattributes .gitconfig .gitignore .gvimrc .inputrc .irb-history .lesshst .mailcap .mime.types .mysql_history .osx .path .profile .rnd .rvmrc .s3cfg .screenrc .viminfo .vimrc .wgetrc; do nf=$(echo $f | cut -c2-); echo $nf; done
cd .dotfiles/
git l
git s
gc -am"Initial commit"
git remote
git remotes
git push origin
dotsync/bin/dotsync -L
subl dotsync/bin/dotsync
dotsync/bin/dotsync -L
ll ~/.bashrc
git s
ga *
gc -am"Actually add dotfiles"
git push luveen
git remotes
git remote add luveen https://github.com/luveenw/dotphiles.git
git push luveen
git s
git l
git push origin
bash_refresh &&gp
report_db_mysql 
report_db_mysql 9001 dbqa001.va.opower.it xxx_report xxx apaephoofies
report_db_mysql 9001 dbqa001.va.opower.it xxx_report jenkins volTm3ter
ps aux | grep ssh
kill -9 97191
kill -9 96684
subl ~/.functions
type rmysql
type ssh_tunnel
git s
bash_refresh && gp
report_db_mysql
report_db_mysql 9001 dbqa001.va.opower.it xxx_report jenkins volTm3ter
man sleep
dbqa001
type ssh_tunnel
bash_refresh && gp
report_db_mysql 9001 dbqa001.va.opower.it xxx_report jenkins volTm3ter
w
cd weather-service-jobs/
gpu
mysql -u root -D batch -A
w
cd site-attribute-service/
mcis -o -e
mysql -u root -D batch -A
mcis -o -e
mysql -u root -D batch -A
mcis -o -e
mysql -u root -D batch -A
mcis -o -e
mysql -u root -D batch -A
mcis -o -e
mci -o -e
gs
git s
go -b sa-1094_fix_oome
gc -am"Refactor out code into easj"
git push luveen sa-1094_fix_oome
go master
gpu
go sa-1094_fix_oome
mci -o -e
gp && w
cd clients
cd xxx
svn up
subl pom.xml 
mysql -h report-zok1-qa.va.opower.it -u zok1 -pMrjteLANwI3x -D zok1_report -A
ssh report-xxx-qa.va.opower.it
ps aux | grep ssh
w
cd entity-attribute-sync-job/
gc -am"CR feedback"
gb -l
go no-refs_oome_debug
tailf /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_e2d50231-d66b-4b96-ba10-465e8624cd15.log
gp && w
cd entity-sync-job/
go master
gpu
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -A
ss dev-db-service-1002.va.opower.it
 dev-db-service-1002.va.opower.it
dbdv001
dpdv001
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -A
gp && w
dpdv001
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
which git
git
cd entity-attribute-sync-job/
git s
git status
gp
bash_refresh && gp
ll
git s
git l
git --version
brew
brew upgrade
xcode-select --install
sudo xcode-select --install
mci -o -e
mysql_start
git s
mci -o -e
xcode-select -p
xcode-select --install
git s
mci -o -e
gc -am"Tests pass"
gb -l -r
git push luveen sa-1073_int_test:sa-1073_int_test_merge_sa_1094
git l
grm
grim
git push -f luveen sa-1073_int_test:sa-1073_int_test_merge_sa_1094
git s
gc -am"remove todos"
mci -o -e
grm
grim
git push -f luveen sa-1073_int_test:sa-1073_int_test_merge_sa_1094
gc --amend
git push -f luveen sa-1073_int_test:sa-1073_int_test_merge_sa_1094
java --version
java 
java -version
mysql -u root -D batch_test -A
gp && w
gp && w
mysql -u root
dpdv001
ssh qa-jenkins-slave-1012
emptytrash 
cd entity-attribute-sync-job/
git s
gds
mci -o -e
ll target/surefire-reports/com.opower.attribute.batch.site.reader.TestSiteAttributeServiceToReportDBSyncItemReader-output.txt
subl target/surefire-reports/com.opower.attribute.batch.site.reader.TestSiteAttributeServiceToReportDBSyncItemReader-output.txt
mci -o -e -Dtest=TestSiteAttributeServiceToReportDBSyncItemReader
mci -o -e -Dtest=TestSiteAttributeServiceToReportDBSyncItemReader -DskipITs
subl target/surefire-reports/com.opower.attribute.batch.site.reader.TestSiteAttributeServiceToReportDBSyncItemReader-output.txt
git s
go -b sa-1073_int_test_fix_fail
gc -am"add toString for debugging"
git push luveen sa-1073_int_test_fix_fail
go sa-1073_int_test
git l
git s
go sa-1073_int_test_fix_fail 
gds
mci -o -e -Dtest=TestSiteAttributeServiceToReportDBSyncItemReader -DskipITs
subl target/surefire-reports/com.opower.attribute.batch.site.reader.TestSiteAttributeServiceToReportDBSyncItemReader-output.txt
gc -am"add toString for parcel"
git push luveen sa-1073_int_test_fix_fail
adb push /Users/luveen.wadhwani/Downloads/Let\'s\ Play\ Shenmue\ -\ Part\ 1.mp4 /sdcard/Movies/Lets\ Play\ Shenmue\
adb push /Users/luveen.wadhwani/Downloads/Let\'s\ Play\ Shenmue\ -\ Part\ 1.mp4 /sdcard/Movies/Lets\ Play\ Shenmue
adb push /Users/luveen.wadhwani/Downloads/Let\'s\ Play\ Shenmue\ -\ Part\ 2.mp4 /sdcard/Movies/Lets\ Play\ Shenmue
adb push /Users/luveen.wadhwani/Downloads/Let\'s\ Play\ Shenmue\ -\ Part\ 3.mp4 /sdcard/Movies/Lets\ Play\ Shenmue
git s
gc -am"Comment out some stuff to verify if tests still pass"
git push luveen sa-1073_int_test_fix_fail 
git l
git reset --hard HEAD^1
git l
git s
mci -o -e
subl target/failsafe-reports/com.opower.attribute.batch.IntTestAttributeServiceToCoreTranslatorImpl-output.txt 
mci -o -e
mysql -D poseur_test -u root -A
mci -o -e
gc -am"Some cleanup"
git push -f luveen sa-1073_int_test_fix_fail 
git s
gc -am"does ordering attributes fix this?"
git push -f luveen sa-1073_int_test_fix_fail
mci -o -e
gc -am"Fix checkstyle"
git push luveen sa-1073_int_test_fix_fail
git s
mci -o -e
gc -am"Does commenting out toString() still work?"
git push luveen sa-1073_int_test_fix_fail
git s
gc -am"Update s-a-s dep version"
mcis -e
git push luveen sa-1073_int_test_fix_fail
git s
gc -am"Add toString() back for debugging"
git push luveen sa-1073_int_test_fix_fail
git s
gc -am"Order map entries"
git push luveen sa-1073_int_test_fix_fail
mcis -o -e
git push luveen sa-1073_int_test_fix_fail
gc -am"Fix checkstyle"
git push luveen sa-1073_int_test_fix_fail
mci -o -e
gc -am"comment out toString() again" && git push luveen sa-1073_int_test_fix_fail
git s
gc -am"Remove toString()"
git push luveen sa-1073_int_test_fix_fail
 s
git s
gc -am"Remove luveen todo"
git push luveen sa-1073_int_test_fix_fail 
git l
git reset --hard HEAD^2
git reset --hard HEAD^1
git push -f luveen sa-1073_int_test_fix_fail
git s
gc -am"Remove todos"
git push -f luveen sa-1073_int_test_fix_fail
git s
gds
gp && w
cd entity-attribute-sync-job/
mysql -u root -D site_attribute_test -A
zkServer start
gp && w
cd "/Users/luveen.wadhwani/Applications/Metro Last Light.app/Contents"
ll
ll MacOS/
ll Resources/
cat MacOS/run.sh 
cd /Applications/Steam.app/Contents/MacOS/steam/games/
ll
...
ll .
chflags nohidden ~/Library
killall Finder
gp && w
gp && w
dbdv001 
gp && w
dbdv001
gp && w
dbdv001
gp && w
dbdv001
gp && w
sed -e 's/,O/,O,small_orange/g;s/,R/,R,small_red' /Users/luveen.wadhwani/Documents/portland\ owner\ renter.csv | subl
sed -e 's/,O/,O,small_orange/g;s/,R/,R,small_red/g' /Users/luveen.wadhwani/Documents/portland\ owner\ renter.csv | subl
sed -e 's/,O/,O,small_yellow/g;s/,R/,R,small_red/g' /Users/luveen.wadhwani/Documents/portland\ owner\ renter.csv | subl
sed -e 's/,O/,O,5/g;s/,R/,R,10/g' /Users/luveen.wadhwani/Documents/portland\ owner\ renter.csv | subl
cd weather-service
gpu
gb -l
go -b sa-1031_outlier
gp && w
dbdv001
mysql
mysql -u root -D weather
mysql -u root -D weather_test
ssh dev-db-weather-1001.va.opower.it
mysql
mysql -u weather_root -D weather -pdBtB4ZHsYQR5nq
ssh dev-db-weather-1001.va.opower.it
mysql -u weather_root -D weather -pdBtB4ZHsYQR5nq -h dev-db-weather-1001.va.opower.it
gp && w
w
cd youtube-dl/
gpu
cd ~/Movies/
mkdir Metal\ Gear\ Solid
cd Metal\ Gear\ Solid/
youtube-dl --video-format mp4 https://www.youtube.com/view_play_list?p=81FF3036ED6652FF
youtube-dl https://www.youtube.com/view_play_list?p=81FF3036ED6652FF
rm -rf *
youtube-dl -o "%(autonumber)s-%(title)s.%(ext)s" https://www.youtube.com/view_play_list?p=81FF3036ED6652FF
adb push /Users/luveen.wadhwani/Downloads/Metal\ Gear\ Solid\ #1_\ Tickle\ Codec.webm /sdcard/Videos/Lets\ Play\ Metal\ Gear\ Solid/Metal\ Gear\ Solid\ 1
adb push /Users/luveen.wadhwani/Downloads/Metal\ Gear\ Solid\ #2_\ Sneak\ That\ Snake\ Snack.webm /sdcard/Videos/Lets\ Play\ Metal\ Gear\ Solid/Metal\ Gear\ Solid\ 1
adb push /Users/luveen.wadhwani/Movies/Metal\ Gear\ Solid/00001-Mission\ Description.mp4 /sdcard/Videos/Lets\ Play\ Metal\ Gear\ Solid/Metal\ Gear\ Solid\ 1/Briefing\ Tapes
adb push /Users/luveen.wadhwani/Movies/Metal\ Gear\ Solid/00001-Mission\ Description.mp4 /sdcard/Movies/Lets\ Play\ Metal\ Gear\ Solid/Metal\ Gear\ Solid\ 1/Briefing\ Tapes
adb push /Users/luveen.wadhwani/Downloads/Metal\ Gear\ Solid\ #1_\ Tickle\ Codec.webm /sdcard/Movies/Lets\ Play\ Metal\ Gear\ Solid/Metal\ Gear\ Solid\ 1/Metal\ Gear\ Solid\ #1_\ Tickle\ Codec.webm
adb push /Users/luveen.wadhwani/Movies/Metal\ Gear\ Solid/. /sdcard/Movies/
adb push /Users/luveen.wadhwani/Movies/Metal\ Gear\ Solid/. /sdcard/Movies/Metal\ Gear\ Solid/
adb push /Users/luveen.wadhwani/Movies/Metal\ Gear\ Solid/0003\ -\ Metal\ Gear\ Solid\ #3_\ Nice\ Jowls.mp4 /sdcard/Movies/Metal Gear Solid/0003\ -\ Metal\ Gear\ Solid\ #3_\ Nice\ Jowls.mp4
mysql -u weather_root -D weather -pdBtB4ZHsYQR5nq -h dev-db-weather-1001.va.opower.it
cd weather-service
git s
rm atlassian-ide-plugin.xml bin/performance-test/config/AggregateSeed.csv bin/performance-test/config/DailySummarySeed.csv bin/performance-test/config/ObservationSeed.csv
git s
gc -am"Initial changes for outliers"
git push luveen sa-1031_outlier 
ll
ll .git
ll .git/hooks/pre-push
subl .git/hooks/pre-push
cd entity-attribute-sync-job/
gds
git l
gb -l
gc -am"Add this"
git push luveen sa-1073_int_test_fix_fail 
alias g
alias gp
grm
grim
git push -f luveen sa-1073_int_test_fix_fail 
gp && w
gp && w
type dbqa001
cd entity-attribute-sync-job/
go -b no-refs_test_sa_1094
mcis -o -e
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/xxx/1" && echo && echo "Looked."
dbqa001
bwqa001
bwqa002
which my.cnf
whereis my.cnf
subl ~/.my.cnf
subl ~/my.cnf
which mysql
ll /usr/local/mysql
ll /usr/local/Cellar/mysql51/5.1.73
bwqa002
emptytrash 
mysql -u root
gp && w
cd /code/batch/bertha/bertha-scheduler/ && mvn -o -e clean activemq:run zookeeper:start jetty:run
gp && w
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
cd batch/bertha/bertha-agent/
ll
..
ll
subl pom.xml 
mcis -o -e
mcis -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok1", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_29571771-1f1c-42fa-bec6-96917e20db81.log
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_37f72076-92cd-41ae-ae34-4e44905781c5.log
bwqa002
cd /code/infrastructure/machines/dev/home/build/bin/jasypt
./decrypt.sh input="9wjfaAkoX6MKWJ6hOTY26ZRk5N8ESBF5" password="n2958uxBfJGr"
-
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/3" && echo && echo "Looked."
w
cd entity-attribute-sync-job/
mcis -o -e
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
htop
top
jps -lm
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/3" && echo && echo "Looked."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Posting job request..." && curl "http://localhost:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it:8080/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
mysql -D site_attribute
mysql -u root -D site_attribute
du -h
df -h
mysql -u root -D site_attribute
ssh dev-db-service-1002.va.opower.it
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -A
echo "Posting job request..." && curl "https://bertha-qa.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START", "jobParameters":{}}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-qa.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
mysql -h dev-db-weather-1001.va.opower.it -u weather_root -pdBtB4ZHsYQR5nq -D weather -A
gp && w
mysql -u root -D batch -A
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_zok1_3def7167-859f-41e1-a0a2-661c4577e9fd.log
subl /var/folders/6l/g7_j7kws07qg76x86tdnqlcrjm03lg/T//logs/bertha-job_entity-attribute-sync-job_xxx_b904a1e7-bde7-458e-a752-e4528f0fadd0.log
report_db_mysql
report_db_mysql 9000 dbqa001.va.opower.it xxx_report jenkins volTm3ter
report_db_mysql 9000 dbqa001.va.opower.it clpp_report jenkins volTm3ter
youtube-dl --yes-playlist -o '~/Movies/Let's Play Shenmue II/%(playlist)s/%(autonumber)s %(title)s-%(id)s.%(ext)s' https://www.youtube.com/watch?v=H3lKiply9oU&list=PLkxZmcJb0ldxTevbgY6ep4yviKbIogPHb
youtube-dl --yes-playlist -o "~/Movies/Let's Play Shenmue II/%(playlist)s/%(autonumber)s %(title)s-%(id)s.%(ext)s" https://www.youtube.com/watch?v=H3lKiply9oU&list=PLkxZmcJb0ldxTevbgY6ep4yviKbIogPHb
youtube-dl --yes-playlist -o "~/Movies/Let's Play Shenmue II/%(autonumber)s %(title)s-%(id)s.%(ext)s" https://www.youtube.com/playlist?list=PLkxZmcJb0ldxTevbgY6ep4yviKbIogPHb
youtube-dl --yes-playlist -o --playlist-start 19 "~/Movies/Let's Play Shenmue/%(autonumber)s %(title)s-%(id)s.%(ext)s" https://www.youtube.com/playlist?list=PLkxZmcJb0ldwoG01cFT9KG6vs1JIHo_72
youtube-dl --yes-playlist -o --playlist-start 19 --playlist-end 28 "~/Movies/Let's Play Shenmue/%(autonumber)s %(title)s-%(id)s.%(ext)s" https://www.youtube.com/playlist?list=PLkxZmcJb0ldwoG01cFT9KG6vs1JIHo_72
youtube-dl --yes-playlist --playlist-start 19 -o "~/Movies/Let's Play Shenmue/%(autonumber)s %(title)s-%(id)s.%(ext)s" https://www.youtube.com/playlist?list=PLkxZmcJb0ldwoG01cFT9KG6vs1JIHo_72
youtube-dl --yes-playlist -o "~/Movies/Let's Dark Souls II - Scholar of the First Sin/%(autonumber)s %(title)s-%(id)s.%(ext)s" https://www.youtube.com/playlist?list=PLekB0zmLBUtQEiJQ8-3MvFx8YQjmZV15W
bwqa002
gp && w
/Applications/MPlayerX.app/Contents/MacOS/MPlayerX; exit;
gp && w
cd "/Applications/MPlayerX.app"
ll
gp && w
gp && w
gp && w
gp && w
cd entity-attribute-sync-job/
git s
gds
git s
git checkout -- src/main/resources/config/local/entityAttributeSyncJob.properties
ll
git s
gds
git l
gc -am"[SA-1094] Temporarily enable easj against dev report DB for trsting"
gc --amend
git push luveen no-refs_test_sa_1094
mci -o -e
git push luveen no-refs_test_sa_1094
git l
dpdv001
cd target/
ll
scp entity-attribute-sync-job-0.0.3-SNAPSHOT-with-dependencies.jar luveen.wadhwani@bwdv001:/var/tmp
bwdv001
bwdv002
scp entity-attribute-sync-job-0.0.3-SNAPSHOT-with-dependencies.jar luveen.wadhwani@bwdv002:/var/tmp
scp entity-attribute-sync-job-0.0.3-SNAPSHOT-with-dependencies.jar bwdv002.va.opower.it:/var/tmp
bwdv002
dpdv001
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -A
..
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -A
dpdv001
gp && w
gp && w
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok2", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"zok2", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/zok2/1" && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/xxx/1" && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"xxx", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/xxx/1" && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
cd weather-service
mci -o -e
git s
gds
gc -am"Review round 1 - visibility modifiers; constant for 10"
git push luveen sa-1031_outlier 
git push --no-verify luveen sa-1031_outlier 
git l
mci -o -e
mci -o -e -rf :weather-server
git l
gc -am"Review round 1 - throw IllegalArgumentException"
git push --no-verify luveen sa-1031_outlier 
git l
gds
gc -am"Remove unnecessary checkArgument"
git push --no-verify sa-1031_outlier
git push --no-verify luveen sa-1031_outlier
git l
gc --amend"Review round 1 - Remove unnecessary checkArgument"
gc --amend -m"Review round 1 - Remove unnecessary checkArgument"
git l
git push --no-verify --force luveen sa-1031_outlier
git l
gds
gc -am"Review round 1 - more documentation"
git push --no-verify luveen sa-1031_outlier 
git l
ssh site-model-service@dev-db-service-1005.va.opower.it
ssh -V site-model-service@dev-db-service-1005.va.opower.it
ssh -v site-model-service@dev-db-service-1005.va.opower.it
mysql --host=dev-db-service-1005.va.opower.it --user=site_model --password=aQZD7El1
ssh prod-service-1017.va.opower.it
gds
gc -am"[WIP] Better outlier filtering"
git push --no-verify luveen sa-1031_outlier:sa-1031_outlier_tau
dbdv001
bwdv002
gp && w
cd ~/Dropbox/Documents/1743\ San\ Jose\ Bills/
cd Trash/
ll
mv document.pdf 2015_06_01_trash_bill.pdf
gp && w
cd weather-service
gds
ll
ll .git
subl .git/hooks/pre-push
gds
git push luveen sa-1031_outlier sa-1031_outlier
git push --no-verify luveen sa-1031_outlier
git l
gds
gc -am"More implement"
git s
gc -am"Complete unit test case; before running mci"
mci -o -e
git s
gc -am"Fix checkstyle"
mysql -u root < weather-db/db/schema-local.ddl 
mci -o -e
gc -am"Fix tests"
git push --no-verify luveen sa-1031_outlier
gdoms
mci -o -e
mci -o -e -rf :weather-server
gc -am"Cleanup"
git push --no-verify luveen sa-1031_outlier
git l
grm
grim
git l
git push -f --no-verify luveen sa-1031_outlier
-
w && cd site-service/site-server && cap nexus:upload_artifact
dbdv001
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -A
curl -X POST -H "Content-Type: application/json" -d '{"jobName":"entity-attribute-sync-job", "client":"clpp", "cronExpression":"0 0 0 1/1 * ? 2299"}' https://bertha-qa.va.opower.it/v1/scheduler/jobs
curl -s https://bertha-qa.va.opower.it/v1/scheduler/jobs?jobName=entity-attribute-sync-job\&clientCode=clpp | python -m json.tool
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -e"delete from entity_attribute where utility_code like 'clpp'"
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -e"delete from sync_high_watermarks where utility_code like 'clpp'"
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
gp && w
bwdv002
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
cd entity-attribute-sync-job/
gds
alias gds
cd ../weather-service
gds
git diff luveen sa-1031_outlier
git diff luveen/sa-1031_outlier
git diff luveen/sa-1031_outlier | subl
git l
gc -am"Complete outlier filtering"
mci -o -e
mci -o -e 
mci -o -e -rf :weather-server
git diff luveen/sa-1031_outlier | subl
gc -am"Checkstyle"
git l
grm
grim
git l
git push --no-verify luveen sa-1031_outlier
git l
gds
git l
gc -am"Improved outlier tests"
git push --no-verify luveen sa-1031_outlier
mci -o -e
mci -o -e -rf :weather-server
grm
grim
gc -am"Fix checkstyle"
grm
grim
git push --no-verify -f luveen sa-1031_outlier
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" && echo && echo "Looked."
gds
gc -am"Improve null handling"
mci -o -e
mci -o -e -rf :weather-server
gc -am"Checkstyle"
grm\
grm
grim
git push --no-verify luveen sa-1031_outlier
killall chrome
ps aux | grep chrom
gp && w
gp && w
dpdv001
gp && w
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute
gp && w
dbdv001
gp && w
cd weather-service
gds
gc -am"Explain itemsMerged"
git push --no-verify luveen sa-1031_outlier 
curl -s https://bertha-qa.va.opower.it/v1/scheduler/jobs?jobName=entity-attribute-sync-job\&clientCode=clpp | python -m json.tool
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' | python -m json.tool && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" | python -m json.tool && echo && echo "Looked."
dpdv001
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" | python -m json.tool && echo && echo "Looked."
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' | python -m json.tool && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" | python -m json.tool && echo && echo "Looked."
gp && w
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute
gp && w
cd entity-attribute-sync-job/
mci -o -e -Dtest=TestAttributeSyncPropertyUtils
mci -o -e -DskipITs -Dtest=TestAttributeSyncPropertyUtils
gds
gc -am"Improve null handling when setting attribute values"
git l
gp && w
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -e"delete from entity_attribute where utility_code like 'clpp'"
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute -e"delete from sync_high_watermarks where utility_code like 'clpp'"
echo "Posting job request..." && curl "https://bertha-dev.va.opower.it/v1/executions" --header "Content-Type: application/json" --header "Accept: application/json" --data '{"jobName":"entity-attribute-sync-job", "client":"clpp", "action":"START"}' | python -m json.tool && echo && echo "Posted."
echo "Looking for existing job requests..." && curl "https://bertha-dev.va.opower.it/v1/executions/entity-attribute-sync-job/clpp/1" | python -m json.tool && echo && echo "Looked."
gp && w
gp && w
dbdv001
ssh dev-zookeeper-a.va.opower.it
cd entity-attribute-sync-job
mci -o -e
ll target/surefire/
ll target/surefire-reports/ | grep IntTestAttributeServiceToCoreTranslatorImpl
ll target/failsafe-reports
subl target/failsafe-reports/com.opower.attribute.batch.IntTestAttributeServiceToCoreTranslatorImpl-output.txt
mci -o -e
mci -o -e -DskipTests -Dtest=IntTestSiteAttributeSync
git s
gsa
gds
zkServer status
ll target/
mvn clean
ll target/
ll target/test-classes/
git s
gds
mci -o -e
git l
gc -am"Tests for null handling"
grm
grim
git l
git push luveen no-refs_test_sa_1094
git config
git config --list
git push luveen no-refs_test_sa_1094
cd target
scp entity-attribute-sync-job-0.0.3-SNAPSHOT-with-dependencies.jar bwdv002.va.opower.it:/var/tmp
dpdv001
gp && w
dpdv001
subl target/failsafe-reports/com.opower.attribute.batch.IntTestAttributeServiceToCoreTranslatorImpl-output.txt
cd entity-attribute-sync-job/
subl target/failsafe-reports/com.opower.attribute.batch.IntTestAttributeServiceToCoreTranslatorImpl-output.txt
ll target/entity-attribute-sync-job-0.0.3-SNAPSHOT-with-dependencies.jar 
git s
gc -am"Remove temp dev config"
gdoms
git push luveen no-refs_test_sa_1094
grm
grim
git l
git push -f luveen no-refs_test_sa_1094
ssh dev-db-service-1002.va.opower.it
ssh -Vv dev-db-service-1002.va.opower.it
ssh -V dev-db-service-1002.va.opower.it
ssh -v dev-db-service-1002.va.opower.it
cd ../weather-service
git l
grm
go master
gpu
go sa-1031_outlier
grm
grim
git l
git push --no-verify -f sa-1031_outlier
git push --no-verify -f luveen sa-1031_outlier
type deploy
cd weather-servefr
cd weather-server
cap alpha deploy:stop --HOST=dev-service-1009.va.opower.it
HOSTS=dev-service-1009.va.opower.it cap alpha deploy:stop
cap alpha --hosts=dev-service-1009.va.opower.it deploy:stop
cap alpha --host dev-service-1009.va.opower.it deploy:stop
cap alpha --hosts dev-service-1009.va.opower.it deploy:stop
cap alpha --host=dev-service-1009.va.opower.it deploy:stop
cap alpha -host=dev-service-1009.va.opower.it deploy:stop
cap alpha -hosts dev-service-1009.va.opower.it deploy:stop
cap alpha --hosts dev-service-1009.va.opower.it deploy:stop
cap HOSTS=dev-service-1009.va.opower.it deploy
cap HOSTS=dev-service-1009.va.opower.it deploy:start
ssh dev-service-1009.va.opower.it
ssh weather-service@dev-service-1009.va.opower.it
gp && w
mysql -h dev-db-service-1002.va.opower.it -u site_attribute -pRaU1eX2F -D site_attribute
gp && w
mysql -u jenkins -pvolTm3ter -h dbqa001 -D bgec_report -A
dbqa001
gp && w
mysql -u jenkins -pvolTm3ter -h dbqa001 -D bgec_report -A
dbqa001
gp && w
ssh weather-service@dev-service-1009.va.opower.it
gp && w
...
w
gp && w
gp && w
dbdv001
dbqa001
cd weather-service
git l
mci -o -e
cd weather-server
mci -o e
mci -o -e
git s
gc -am"Add test case for null filtering when filtering outliers"
grm
grim
mci -o -e
gc -am"Add unit test case for filtering nulls when filtering outliers"
git push -f --no-verify luveen sa-1031_outlier_moar
grm
grim
git s
git l
git push -f --no-verify luveen sa-1031_outlier_moar
cap nexus:upload_artifact
HOSTS=dev-service-1009.va.opower.it cap nexus:upload_artifact
HOSTS=dev-service-1009.va.opower.it cap alpha deploy:stop
type deploy
HOSTS=dev-service-1009.va.opower.it cap alpha deploy
HOSTS=dev-service-1009.va.opower.it cap alpha deploy:start
time curl -XGET 'http://dev-service-1009.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
HOSTS=dev-service-1010.va.opower.it cap alpha deploy
HOSTS=dev-service-1010.va.opower.it cap alpha deploy:start
HOSTS=dev-service-1010.va.opower.it cap alpha deploy:stop
HOSTS=dev-service-1010.va.opower.it cap alpha deploy
HOSTS=dev-service-1010.va.opower.it cap alpha deploy:start
time curl -XGET 'http://dev-service-1010.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
time curl -XGET 'http://dev-service-1009.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
time curl -XGET 'http://dev-service-1010.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
time curl -XGET 'http://dev-service-1009.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
time curl -XGET 'http://dev-service-1010.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
time curl -XGET 'http://dev-service-1009.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
time curl -XGET 'http://dev-service-1010.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
time curl -XGET 'http://dev-service-1009.va.opower.it:8260/aggregates/39.2716601,-76.5927824?start=2014-06-03&end=2014-06-30'
dbdv001
dbqa001
gp && w
mkdir clients-git
cd clients-git
git clone https://github.va.opower.it/clients/bgec.git
cd bgec
mci -e
mcis -e
mci -e
mci -DskipTests -DskipITs -e
mci -DskipTests -DskipITs -Dskip.recreate.schema=true -e
mci -DskipTests -DskipITs -Dskip.recreate.schema=true -X -e
mci -DskipTests -DskipITs -Dskip.recreate.schema=true -e
go -b sa-1031_test_astro_qa_hitting_weather_dev
git checkout -- pom.xml
gds
gc -am"[SA-1031] Temporarily fetch weather data from weather-service in dev"
git push luveen sa-1031_test_astro_qa_hitting_weather_dev 
git remotes
git remote add luveen https://github.va.opower.it/luveen-wadhwani/bgec
git remotes
git push luveen sa-1031_test_astro_qa_hitting_weather_dev 
git remotes
gp && w
type dbdv001
opower.bash/
ll opower.bash/
ll opower.bash/bin/
subl opower.bash/bin/server-aliases.rb 
subl opower.bash/config/servers.yaml 
apdv001
apqa001
dpqa001
apqa001
which distribute.rb
whereis distribute.rb
ll
find . -iname "distribute.rb" -type f
mysql
apqa001
dpdv001
man readlink
apqa001
ssh weather-service@dev-service-1009
ssh weather-service@dev-service-10101
ssh weather-service@dev-service-1010
gp && w
ssh weather-service@stage-service-5106.aws.opower.it
gp && w
ssh weather-service@stage-service-5106.aws.opower.it
ssh weather-service@stage-service-5206.aws.opower.it
gp && w
dbqa001
gp && w
-
ll
ll config/
ll
ll config/
subl /tmp/performance-test/prod_2015_07_31_08_31_36_before.csv 
ruby run_jmeter_test.rb -t prod
ruby run_jmeter_test.rb -t prod -d 15
ruby run_jmeter_test.rb -t prod
go master
git push --no-verify origin master:SA-1031
ssh weather-service@stage-service-5206.aws.opower.it
ssh weather-service@prod-service-5102.aws.opower.it
ssh weather-service@prod-service-5202.aws.opower.it
ssh weather-service@dev-service-1010.va.opower.it
ssh weather-service@prod-service-5202.aws.opower.it
ssh weather-service@prod-service-5102.aws.opower.it
ssh weather-service@dev-service-1009.aws.opower.it
ssh weather-service@dev-service-1009.va.opower.it
ssh weather-service@prod-service-5102.aws.opower.it
gp && w
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
gp && w
gp && w
cd astro/
gpu
rvm install ruby-1.9.2-p330
ssh dev-db-weather-1001.va.opower.it
mysql -h dev-db-weather-1001.va.opower.it -u weather_root -pdBtB4ZHsYQR5nq -D weather -A
dbqa001
w
cd weather-service
cd bin/performance-test/
ruby run_jmeter_test.rb -t prod
rm config/*.csv
git s
ruby run_jmeter_test.rb -t prod
git s
ruby run_jmeter_test.rb -t prod
ruby generate_seed_data.rb 
ruby run_jmeter_test.rb -h
ruby run_jmeter_test.rb -t prod
gds
..
cd weather-server
cap production deploy
gds
go master
go -b no-refs_perf_testing_updates
gc -am"[NO-REFS] Performance test output improvements"
git push --no-verify luveen no-refs_perf_testing_updates 
go master
gpu
go -b sa-1031_rollback
git l
..
git push --no-verify luveen master
git fetch origin
git fetch origin master
gb -l
git remotes
git fetch opower
go revert-387-sa-1031_outlier_moar
git fetch revert-387-sa-1031_outlier_moar
git fetch opower revert-387-sa-1031_outlier_moar
go revert-387-sa-1031_outlier_moar
gb -l
git fetch
git checkout revert-387-sa-1031_outlier_moar
gb -r
go origin/revert-387-sa-1031_outlier_moar
git l
git push --no-verify luveen origin-revert-387-sa-1031_outlier_moar
go -b origin-revert-387-sa-1031_outlier_moar
git l
git push --no-verify luveen origin-revert-387-sa-1031_outlier_moar
git fetch
go origin/revert-387-sa-1031_outlier_moar
go master
gpu
go origin/revert-381-sa-1031_outlier
go -b origin-revert-381-sa-1031_outlier
git push --no-verify luveen origin-revert-381-sa-1031_outlier
go master
git push --no-verify -f luveen master
gpu
go SA-1031
git fetch
git fetch opower
gb -l
gb -r
go origin/SA-1031
go master
go -t origin/SA-1031
git l
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
cd bin/performance-test/
mysql -u root
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
mysql
cd ~/Documents/development/
cd 5.8/sa-1031/
for u in $(cat weather_urls.txt); do echo; echo $u; done
for u in $(cat weather_urls.txt); do echo; echo "Curling $u..."; curl -XGET "$u"; echo; done
curl -XGET "localhost:8260/aggregates/38.75286,-76.62841?start=2014-09-28&end=2014-10-26&fields=meanTemperature"
curl -XGET "localhost:8260/aggregates/38.75286,-76.62841?start=2014-08-29&end=2014-09-27&fields=meanTemperature"
curl -XGET "localhost:8260/aggregates/38.75286,-76.62841?start=2014-07-27&end=2014-08-28&fields=meanTemperature"
for u in $(cat weather_urls.txt); do echo; echo "Curling $u..."; curl -XGET "$u"; echo; done
curl -XGET "localhost:8260/aggregates/38.75286,-76.62841?start=2015-05-30&end=2015-06-27&fields=meanTemperature"
w
-
curl -XGET "localhost:8260/aggregates/38.75286,-76.62841?start=2015-05-30&end=2015-06-27&fields=meanTemperature"
for u in $(cat weather_urls.txt); do echo; echo "Curling $u..."; curl -XGET "$u"; echo; done
gp && w
cd weather-service
git s

go sa-1031_airport_only 
git stash
go sa-1031_airport_only
git stash apply
git s
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
gp && w
ssh weather-service@dev-service-1010.va.opower.it
ssh weather-service@prod-service-5202.aws.opower.it
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
gp && w
gp && w
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
brew install caskroom/cask/brew-cask
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
brew install jq
which jq
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
gp && w
s4cmd ls 
s4cmd ls s3://weather-archive-by-date/
s4cmd ls s3://weather-archive-by-date/2015/05/
s4cmd ls s3://weather-archive-by-date/2015/05/08
s4cmd ls s3://weather-archive-by-date/2015/05/08/icao*
for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; mkdir -p ~/Documents/development/5.8/sa-1031/$d; do for s in KBWI KDMH KMTN KFME KEDG KNAK KANP KW29 KAPG KCGS KGAI KDMW; do echo "fetching weather data for icao_$s on 2015/05/$d..."; s4cmd get s3://weather-archive-by-date/2015/05/$d/icao_$s.json ~/Documents/development/5.8/sa-1031/$d/; echo "Done."; echo; done; done
for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do mkdir -p ~/Documents/development/5.8/sa-1031/$d; do for s in KBWI KDMH KMTN KFME KEDG KNAK KANP KW29 KAPG KCGS KGAI KDMW; do echo "fetching weather data for icao_$s on 2015/05/$d..."; s4cmd get s3://weather-archive-by-date/2015/05/$d/icao_$s.json ~/Documents/development/5.8/sa-1031/$d/; echo "Done."; echo; done; done
for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do mkdir -p ~/Documents/development/5.8/sa-1031/$d; for s in KBWI KDMH KMTN KFME KEDG KNAK KANP KW29 KAPG KCGS KGAI KDMW; do echo "fetching weather data for icao_$s on 2015/05/$d..."; s4cmd get s3://weather-archive-by-date/2015/05/$d/icao_$s.json ~/Documents/development/5.8/sa-1031/$d/; echo "Done."; echo; done; done
cd ~/Documents/development/5.8/sa-1031/
ll
cd 2015-05_weather/
gp && w
cd ~/Documents/development/5.8/sa-1031/2015-05_weather/
for f in $(find . -iname *.json); do echo $f; done
for f in $(find . -iname *.json); do sed -n -e '/dailysummary/,$p' $f ; done | subl
for f in $(find . -iname *.json); do echo $f && sed -n -e '/dailysummary/,$p' $f && echo && echo; done | subl
for f in $(find . -iname *.json); do echo $f && echo ---------------------------- && echo && sed -n -e '/dailysummary/,$p' $f && echo && echo; done | subl
for f in $(find . -iname *.json); do echo $f && echo ---------------------------- && echo && cat $f | python -m json.tool | sed -n -e '/dailysummary/,$p' && echo && echo; done | subl
for f in $(find . -iname *.json); do grep -n dailysummary && echo $f... && echo; done | subl
gp && w
cd ~/Documents/development/5.8/sa-1031/2015-05_weather/
for f in $(find . -iname *.json); do echo $f; done
for f in $(find . -iname *.json); do sed -n -e '/dailysummary/,$p' $f ; done | subl
for f in $(find . -iname *.json); do echo $f && sed -n -e '/dailysummary/,$p' $f && echo && echo; done | subl
for f in $(find . -iname *.json); do echo $f && echo ---------------------------- && echo && sed -n -e '/dailysummary/,$p' $f && echo && echo; done | subl
for f in $(find . -iname *.json); do echo $f && echo ---------------------------- && echo && cat $f | python -m json.tool | sed -n -e '/dailysummary/,$p' && echo && echo; done | subl
for f in $(find . -iname *.json); do grep -n dailysummary && echo $f... && echo; done | subl
for f in $(find . -iname *.json); do cat $f | python -m json.tool | grep -n dailysummary && echo $f... && echo; done | subl
for f in $(find . -iname *.json); do cat $f | python -m json.tool | grep -qn dailysummary && echo $f... && echo; done | subl
for f in $(find . -iname *.json); do if grep -q dailysummary; then echo $f; done | subl
for f in $(find . -iname *.json); do if grep -q dailysummary; then echo $f; end; done | subl
for f in $(find . -iname *.json); do if [ grep -q dailysummary ]; then echo $f; end; done | subl
for f in $(find . -iname *.json); do if [ grep -q dailysummary ]; then echo $f; fi; done | subl
for f in $(find . -iname *.json); do if grep -q dailysummary; then echo $f; fi; done | subl
gp && w
-
dbqa001
dbdv001
type dbqa001
mysql -h dbqa001.va.opower.it -u jenkins -pvolTm3ter -D bgec_report -A 
dbqa001
dpqa001
dpdv001
dbimp001
history | grep zkCli
zkCli -server dev-zookeeper-1001.va.opower.it:2181
ssh weather-service@dev-service-1009.va.opower.it
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
cd ../weather-service-jobs/
bin/gen_redis_proto.rb weather_transform.queue < /Users/luveen.wadhwani/Documents/development/5.8/sa-1031/transform_may_gap_for_all_airport_stations.txt
bin/gen_redis_proto.rb weather_transform.queue < /Users/luveen.wadhwani/Documents/development/5.8/sa-1031/airport_station_date_pairs_for_may_2015_gap.txt 
bin/gen_redis_proto.rb weather_transform.queue < /Users/luveen.wadhwani/Documents/development/5.8/sa-1031/airport_station_date_pairs_for_may_2015_gap.txt | redis-cli -h prod-redis.va.opower.it -p 6385 --pipe
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
gp && w
cd ~/Documents/development/5.8/sa-1031/
for s in $(cat all_airport_weather_station_codes.txt); do for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do echo "{\"station_code\":\"$s\",\"scrape_date\":\"201505$d\",\"expires_at\":0,\"retries\":0,\"failure_reason\":\"manually inserted from filling script\",\"last_batch_id\":null}"; done; done
for s in $(cat all_airport_weather_station_codes.txt); do for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do echo "{\"station_code\":\"$s\",\"scrape_date\":\"201505$d\",\"expires_at\":0,\"retries\":0,\"failure_reason\":\"manually inserted from filling script\",\"last_batch_id\":null}"; done; done | subl
for s in $(cat all_airport_weather_station_codes.txt); do for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do echo "$s,201505$d"; done; done | subl
redis-cli -h prod-redis.va.opower.it -p 6385 llen weather_transform.queue
bwpr001
bwpr003
type bwpr001
ssh prod-bertha-worker-1003.va.opower.it
gp && w
mysql
mysql -u root
gp && w
cd ~/Documents/development/5.8/sa-1031/2015-05_weather/
for f in $(find . -iname *.json); do echo $f; done
for f in $(find . -iname *.json); do sed -n -e '/dailysummary/,$p' $f ; done | subl
for f in $(find . -iname *.json); do echo $f && sed -n -e '/dailysummary/,$p' $f && echo && echo; done | subl
for f in $(find . -iname *.json); do echo $f && echo ---------------------------- && echo && sed -n -e '/dailysummary/,$p' $f && echo && echo; done | subl
for f in $(find . -iname *.json); do echo $f && echo ---------------------------- && echo && cat $f | python -m json.tool | sed -n -e '/dailysummary/,$p' && echo && echo; done | subl
for f in $(find . -iname *.json); do grep -n dailysummary && echo $f... && echo; done | subl
for f in $(find . -iname *.json); do cat $f | python -m json.tool | grep -n dailysummary && echo $f... && echo; done | subl
for f in $(find . -iname *.json); do cat $f | python -m json.tool | grep -qn dailysummary && echo $f... && echo; done | subl
for f in $(find . -iname *.json); do if grep -q dailysummary; then echo $f; done | subl
for f in $(find . -iname *.json); do if grep -q dailysummary; then echo $f; end; done | subl
for f in $(find . -iname *.json); do if [ grep -q dailysummary ]; then echo $f; end; done | subl
for f in $(find . -iname *.json); do if [ grep -q dailysummary ]; then echo $f; fi; done | subl
for f in $(find . -iname *.json); do if grep -q dailysummary; then echo $f; fi; done | subl
for f in $(find . -iname *.json); do if grep -q dailysummary $f; then echo $f; fi; done | subl
gp && w
gp && w
gp && w
gp && w
gp && w
-h prod-redis.va.opower.it -p 6385 llen weather_transform.queue
redis-cli -h prod-redis.va.opower.it -p 6385 llen weather_transform.queue
cd weather-service
git s
ga weather-db/src/test/resources/sorted_stations.json weather-db/src/test/resources/stations_subset.json
git s
mci -o -e
mci -o -e -rf :weather-server
git s
gc -am"Merge data from 3 closest airport stations as a workaround for offline stations"
git push --no-verify luveen sa-1031_airport_only 
gc -am"Local.yml"
grm
grim
git l
git push -f --no-verify luveen sa-1031_airport_only 
mci -o -e
gc -am"Extraneous stuff remove"
grm
grim
git l
git push -f --no-verify luveen sa-1031_airport_only 
gp && w
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';"
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e 's/\|| //g'
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e 's/\|| //g' | tr \n ,
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e 's/\|| //g' | sed -e 's/\n/,/g'
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e 's/\|| //g' | tr "\\n" ","
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e 's/\|| //g' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n2, sed -e 's/\|| //g' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | head -n2, sed -e 's/\|| //g' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 sed -e 's/\|| //g' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | sed -e 's/\|| //g' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | tail -n -1 sed -e 's/\|| //g' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | tail -n -1 | sed -e 's/\|| //g' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | sed -e \$d | sed -e 's/\|| //g' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | sed -e 's/\|| //g' | sed \$d | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | sed -e 's/\|| //g' | sed -e \$d | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | sed -e 's/\|| //g' | sed -ie '$ d' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | sed -e 's/\|| //g' | sed -e '$ d' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | sed -e 's/\|| //g' | sed '$ d' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | tail -n +2 | sed -e 's/\|| //g' | sed -e '$d' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" |  subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e '1d;$d'  subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e '1d;$d' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e '1d' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" | sed -e '1d' > airport_station_date_pairs_for_may_2015_gap.txt
subl airport_station_date_pairs_for_may_2015_gap.txt 
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select concat(code) from station where code like 'icao%';" > airport_station_date_pairs_for_may_2015_gap.txt
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select code from station where code like 'icao%';" > airport_station_date_pairs_for_may_2015_gap.txt
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select code from station where code like 'icao%';" | sed -e '1d;$d' > airport_station_date_pairs_for_may_2015_gap.txt
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select code from station where code like 'icao%';"
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select code from station where code like 'icao%';" | sed -e '1d' > airport_station_date_pairs_for_may_2015_gap.txt
cat airport_station_date_pairs_for_may_2015_gap.txt 
for s in $(cat all_airport_weather_station_codes.txt); do for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do in mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select count(*) from weather where station = '$s' and day = 201505$d"; done; done
for s in $(cat all_airport_weather_station_codes.txt); do for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select count(*) from weather where station = '$s' and day = 201505$d"; done; done
cd ~/Documents/development/5.8/sa-1031/
for s in $(cat all_airport_weather_station_codes.txt); do for d in 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30; do mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"select count(*) from weather where station = '$s' and day = 201505$d"; done; done
for s in $(cat all_airport_weather_station_codes.txt); do echo "'$s',"; done | subl
a=;for s in $(cat all_airport_weather_station_codes.txt); do a = $a + "'$s',"; done; echo $a | subl
a=;for s in $(cat all_airport_weather_station_codes.txt); do a=$a+"'$s',"; done; echo $a | subl
a=;for s in $(cat all_airport_weather_station_codes.txt); do a=$a+"'$s',"; done; echo $a
cat all_airport_weather_station_codes.txt | sed -e 's/\n/,'
cat all_airport_weather_station_codes.txt | sed -e 's/\n/,/g'
echo "$(cat all_airport_weather_station_codes.txt |  | tr "\n" ",")
chmod +x find_stations_with_existing_data.sh 
./find_stations_with_existing_data.sh 
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e"show tables;"
./find_stations_with_existing_data.sh 
./find_stations_with_existing_data.sh | subl
grep lat /code/weather-service/weather-db/src/main/resources/stations.json
grep lat /code/weather-service/weather-db/src/main/resources/stations.json | wc -l
./find_stations_with_existing_data.sh
./find_stations_with_existing_data.sh | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e'select station, day, mean_temperature, mean_humidity from daily_summary where station in ("icao_KDMH") and day in (20150508, 20150509, 20150510, 20150511, 20150512, 20150513, 20150514, 20150515, 20150516, 20150517, 20150518, 20150519, 20150520, 20150521, 20150522, 20150523, 20150524, 20150525, 20150526, 20150527, 20150528, 20150529, 20150530);' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e'select station, day, mean_temperature, mean_humidity from daily_summary where station in ("icao_KBWI") and day in (20150508, 20150509, 20150510, 20150511, 20150512, 20150513, 20150514, 20150515, 20150516, 20150517, 20150518, 20150519, 20150520, 20150521, 20150522, 20150523, 20150524, 20150525, 20150526, 20150527, 20150528, 20150529, 20150530);' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e'select * from daily_summary where station in ("icao_KBWI") and day in (20150508, 20150509, 20150510, 20150511, 20150512, 20150513, 20150514, 20150515, 20150516, 20150517, 20150518, 20150519, 20150520, 20150521, 20150522, 20150523, 20150524, 20150525, 20150526, 20150527, 20150528, 20150529, 20150530);' | subl
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e'select * from weather where station in ("icao_KBWI") and day in (20150508, 20150509, 20150510, 20150511, 20150512, 20150513, 20150514, 20150515, 20150516, 20150517, 20150518, 20150519, 20150520, 20150521, 20150522, 20150523, 20150524, 20150525, 20150526, 20150527, 20150528, 20150529, 20150530);' | subl
gp && w
mci -o -e
cd weather-service/weather-server/
mci -o -e
time curl -XGET 'http://localhost:8260/aggregates/38.98,-76.33?start=2015-05-08&end=2015-05-30'
time curl -XGET 'http://localhost:8260/dailySummaries/39.70967247262094,-76.27767938930188?start=2015-05-01&end=2015-06-05'
gp && w
-
jq 08/icao_KBWI.json 
cat 08/icao_KBWI.json | jq
vim /Users/luveen.wadhwani/.s3cfg 
subl /Users/luveen.wadhwani/.s3cfg 
w
cd weather-service-jobs/
mkdir -p /work/transforms
sudo mkdir -p /work/transforms
sudo chown -R luveen.wadhwani:wheel /work/transforms
cd /work/transforms/
-
bin/populate_transform_queue.rb -s 2015-05-08 -e 2015-05-30 -a AKIAJ62ZF2ZTHBUJ5X5Q -k VIU/Sp0jLno7m2ESQXdBQleOs6DdSptydPpVfBhx -b weather-archive-by-date -d /work/transforms
ll
gpu
ll bin/
mcis -o -e
mcis -e -rf :weather-data-warehouse-ingest-job
ll bin
cd ../weather-service
cd weather-server
java -jar target/weather-server-1.0.27-SNAPSHOT.jar server src/main/resources/local.yml 
java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005 -jar target/weather-server-1.0.27-SNAPSHOT.jar server src/main/resources/local.yml
gp && w
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e'select code, count(*) from stations where compressed = 1 group by 1'
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A -e'select code, count(*) from station where compressed = 1 group by 1'
mysql -h prod-weather-db.cvzupf6bnies.us-east-1.rds.amazonaws.com -u weather_root -pRZYZ0ccn5ZRXJv -D weather -A
gp && w
emptytrash 
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
gp && w
-
..
git s
gds
gc -am"Javadoc for maxStationMergeCount"
git push --no-verify luveen sa-1031_airport_only 
git l
gp && w
-
gds
ssh weather-service@dev-service-1009.va.opower.it
ssh weather-service@stage-service-5106.aws.opower.it
ssh weather-service@stage-service-5206.aws.opower.it
ssh weather-service@stage-service-5106.aws.opower.it
ssh weather-service@prod-service-5102.aws.opower.it
ssh weather-service@dev-service-1010.va.opower.it
ssh weather-service@stage-service-5206.aws.opower.it
ssh weather-service@prod-service-5202.aws.opower.it
gp && w
gp && w
gp && w
gp && w
cd entity-attribute-sync-job/
df -h
emptytrash
df -h
gp && w
which .aliases
whereis .aliases
ll ~/.aliases
cd /Users/luveen.wadhwani/.dotfiles
git s
gds
gc -am"Update deploy, SSH tunnel; add s4cmd; bash_history snapshot"
git push origin master
open .
git remotes
# opening and closing windows and popovers
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
# smooth scrolling
defaults write -g NSScrollAnimationEnabled -bool false
# showing and hiding sheets, resizing preference windows, zooming windows
# float 0 doesn't work
defaults write -g NSWindowResizeTime -float 0.001
# opening and closing Quick Look windows
defaults write -g QLPanelAnimationDuration -float 0
# rubberband scrolling (doesn't affect web views)
defaults write -g NSScrollViewRubberbanding -bool false
# resizing windows before and after showing the version browser
# also disabled by NSWindowResizeTime -float 0.001
defaults write -g NSDocumentRevisionsWindowTransformAnimation -bool false
# showing a toolbar or menu bar in full screen
defaults write -g NSToolbarFullScreenAnimationDuration -float 0
# scrolling column views
defaults write -g NSBrowserColumnAnimationSpeedMultiplier -float 0
# showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
# showing and hiding Mission Control, command+numbers
defaults write defaults write depose-animation-duration -float 0
# showing and hiding Launchpad
defaults write com.apple.dock springboard-show-duration -float 0
dededededededededededede.dock springboard-hide-duration -float 0
# changing pages in Launchpad
defaults write com.apple.dock springboard-page-duration -float 0
# at least AnimateInfoPanes
defaults write com.apple.finder DisableAllAnimations -bool true
# sending messages and opening windows for replies
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true
gp && w
brew install wineskin
brew instal cask Caskroom/cask/wineskin-winery
brew install wineskin
brew install wineskin-winery
brew install winery
gp && w
emptytrash
