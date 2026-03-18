class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773835769-g08fd18"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773835769-g08fd18/amp-darwin-arm64"
      sha256 "78f37565236c4a0a7d7a3c5d95fcf919dc184198e1693f65d8b1be40f40d1cd8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773835769-g08fd18/amp-darwin-x64"
      sha256 "399dddb40b8cd46f872f6f06715d7dd6a62438626e209c998e9ca9ad6989d9b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773835769-g08fd18/amp-linux-arm64"
      sha256 "00d75661d3e456579c7c37160b5f3846c8d74741836f93bac4133286831c33d3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773835769-g08fd18/amp-linux-x64"
      sha256 "f194f9b7c9195862b2ad8bfc35b6df1fbc88d917afe196673846f6c99eaea942"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
