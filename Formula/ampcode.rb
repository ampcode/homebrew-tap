class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773839349-g889e44"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773839349-g889e44/amp-darwin-arm64"
      sha256 "62361646fb7b5b8931ea73ba80351501b60e64e295ee86c0883c362c219d067a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773839349-g889e44/amp-darwin-x64"
      sha256 "912e8da0f74e5125c4ac51b54b36547927a6809a98f394b94e949eaa3f058cbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773839349-g889e44/amp-linux-arm64"
      sha256 "9c184db89f3c4c48433ca10e78a3a812aa44d3264caaf76a73fdab688b893a7f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773839349-g889e44/amp-linux-x64"
      sha256 "b91f2ccd2ed147f8158b5a1f229ab4eb8803a862edd8ae75a9bdc887bcdc00e2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
