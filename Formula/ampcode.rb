class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793868001-g0e9889"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793868001-g0e9889/amp-darwin-arm64"
      sha256 "55c3534949f02a77225d0fe9bac5f6110f92d6803bc8ac34ca955260abf045fa"
    else
      url "https://static.ampcode.com/cli/0.0.1793868001-g0e9889/amp-darwin-x64"
      sha256 "153c1dc7a9a2cf34b707e54061f70bc141997cca4298ac32c0bbbd9aa0a769c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793868001-g0e9889/amp-linux-arm64"
      sha256 "1cbbc1c5a788516cc49524c25640356b7c9a5438789250d4e6a96da4d2a30b87"
    else
      url "https://static.ampcode.com/cli/0.0.1793868001-g0e9889/amp-linux-x64"
      sha256 "f945e79dde17eeaf7304fa564a5f0ff86c37419e879b420d8ba6f73ad3a98911"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
