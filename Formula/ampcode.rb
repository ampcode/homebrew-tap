class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771977908-gaaf84b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771977908-gaaf84b/amp-darwin-arm64"
      sha256 "b6e16770c98be1701d89f91850878ddcb5811f4d26aca5a962d090c771d413a4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771977908-gaaf84b/amp-darwin-x64"
      sha256 "4bbfc41213adc91366881780497635b8909b782a0cdc90325447b50178870e4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771977908-gaaf84b/amp-linux-arm64"
      sha256 "610662e46658495ca5c0e89f6ff96e8b73fdb6158c4b0fddb9f5fd34d1b716d7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771977908-gaaf84b/amp-linux-x64"
      sha256 "971fa2c5e67c5ff841bafdf1297a8d4a603e8e3b967d4866a0177a1c0b37f428"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
