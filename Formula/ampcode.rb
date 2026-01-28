class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769625294-gfc1608"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769625294-gfc1608/amp-darwin-arm64"
      sha256 "dad02aa9f948e2a2e9bef4b130e09ace76c66bc42ee6f6d6da2f973ad78a2ee3"
    else
      url "/0.0.1769625294-gfc1608/amp-darwin-x64"
      sha256 "ca9934e26d70175fc43b7ac538b62b4bd2d7519388c42d68b468786ae5696299"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769625294-gfc1608/amp-linux-arm64"
      sha256 "fe1e8182a80224c93628f99751c25270be8b77c7a00a0668b9b561d9758a5129"
    else
      url "/0.0.1769625294-gfc1608/amp-linux-x64"
      sha256 "b4c50c2092382e04a42a7a88254eeadd88d2949bf5f877947e0178165245dc05"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
