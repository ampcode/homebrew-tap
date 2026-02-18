class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771445316-gb4e9f0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771445316-gb4e9f0/amp-darwin-arm64"
      sha256 "95b60e919d36d7a525313582fd89e03d9099d6496a0d0fd3bd0c37fd73f900fd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771445316-gb4e9f0/amp-darwin-x64"
      sha256 "f9f093efea35f35448f940e06a53b1f9b6b61408c51007673ecabb3a5b6306ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771445316-gb4e9f0/amp-linux-arm64"
      sha256 "86e897f5fc517643dfeb2ea80461f6a16e180a50ca1288e6ac2e3f79fa10c369"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771445316-gb4e9f0/amp-linux-x64"
      sha256 "eae7bac725a421d269e60211135f2c774563e7af1e672d43a0bbbae7d32586cd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
