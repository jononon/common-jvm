// Copyright 2020 The Measurement System Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package org.wfanet.measurement.storage.gcs

import com.google.cloud.storage.contrib.nio.testing.LocalStorageHelper
import org.junit.Before
import org.junit.runner.RunWith
import org.junit.runners.JUnit4
import org.wfanet.measurement.storage.testing.AbstractStorageClientTest

@RunWith(JUnit4::class)
class CloudStorageClientTest : AbstractStorageClientTest<CloudStorageClient>() {
  @Before
  fun initClient() {
    val storage = LocalStorageHelper.getOptions().service
    storageClient = CloudStorageClient(storage, BUCKET)
  }

  companion object {
    private const val BUCKET = "test-bucket"
  }
}