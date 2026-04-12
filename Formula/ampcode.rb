class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776024335-g035c80"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776024335-g035c80/amp-darwin-arm64"
      sha256 "7b41c19eda8907c7f4b806e8c09bd510d416c23f1db7dcac12156d2d7f2e90c5"
    else
      url "https://static.ampcode.com/cli/0.0.1776024335-g035c80/amp-darwin-x64"
      sha256 "1328d0576305d54682a60803378dfa6147acd78f1e2ba93855b9c2ec5be7d494"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776024335-g035c80/amp-linux-arm64"
      sha256 "8e37784e0efd8271ba6548e64f6eb4f8f68760f743f5da2551c327a07181dcbc"
    else
      url "https://static.ampcode.com/cli/0.0.1776024335-g035c80/amp-linux-x64"
      sha256 "8af61685176ae7daae14a013416d75bd5fc21cb0bb1ef2b43ae594ab0efce7f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
