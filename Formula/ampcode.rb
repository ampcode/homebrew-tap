class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776513961-g3a345b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776513961-g3a345b/amp-darwin-arm64"
      sha256 "d8aabe160cfd3a0df086a5b1f0b35856b40de6d6362c8e511fee182693adc164"
    else
      url "https://static.ampcode.com/cli/0.0.1776513961-g3a345b/amp-darwin-x64"
      sha256 "203d73e1f3655a48196770cf79e990454928d8d91c1e4071b147ae9c27bccc81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776513961-g3a345b/amp-linux-arm64"
      sha256 "2397f6a4155eb7ca5af787720eaaed7d73471f1c78cd493ea891c53a41f35535"
    else
      url "https://static.ampcode.com/cli/0.0.1776513961-g3a345b/amp-linux-x64"
      sha256 "675bc1bb5dbd869b49530aa963f105a397e8f1769b3d6a65a55172d0a0c7086a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
