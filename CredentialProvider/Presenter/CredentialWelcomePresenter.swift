/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import Foundation
import AuthenticationServices
import RxSwift

protocol CredentialWelcomeViewProtocol: BaseWelcomeViewProtocol { }

class CredentialWelcomePresenter: BaseWelcomePresenter {
    private weak var view: CredentialWelcomeViewProtocol? {
        return self.baseView as? CredentialWelcomeViewProtocol
    }

    override func onViewReady() {
        self.launchBiometrics(message: Constant.string.authenticateToEnable)
            .subscribe(onSuccess: { [weak self] _ in
                self?.populateCredentialStore()
            })
            .disposed(by: self.disposeBag)
    }
}

extension CredentialWelcomePresenter {
    private func populateCredentialStore() {
        
    }
}
