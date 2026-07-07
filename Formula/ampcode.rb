class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783422244-gcad83e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783422244-gcad83e/amp-darwin-arm64"
      sha256 "fa8dc7178d16a2f2406f8a02d74a7e1a076b041ca42fb232bb469ef33dbd7526"
    else
      url "https://static.ampcode.com/cli/0.0.1783422244-gcad83e/amp-darwin-x64"
      sha256 "1521754c0f0f91236cec98e5281227e057ab078ea7766afac7b673411763cdcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783422244-gcad83e/amp-linux-arm64"
      sha256 "a36de684a4088cd4bafcc4c87dbbc26c7b01d04021a53ccb18cc3cb630ceb1a0"
    else
      url "https://static.ampcode.com/cli/0.0.1783422244-gcad83e/amp-linux-x64"
      sha256 "7dde4f601df1255986ac22fc1d09ef801576bdcdd141a470e7eb4c0edf2cbbd6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
