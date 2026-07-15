class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784074526-g5a60fd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784074526-g5a60fd/amp-darwin-arm64"
      sha256 "a5d127f1610deb160aac39395a49d6e0ea018fe3ef105b08947bfd9580fe6398"
    else
      url "https://static.ampcode.com/cli/0.0.1784074526-g5a60fd/amp-darwin-x64"
      sha256 "ae5342087d6da44e64cfd74d16dbac27b24b1145e3811696a3673bfa86a34636"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784074526-g5a60fd/amp-linux-arm64"
      sha256 "63b2710499170b53735dedf806203632bac48c4cd007e4e9348d4e606d4b10ff"
    else
      url "https://static.ampcode.com/cli/0.0.1784074526-g5a60fd/amp-linux-x64"
      sha256 "5b0e82b255e0adc56a8b3b1fe6d44526b8a2fd36e918f6f088c674d7260e60a5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
