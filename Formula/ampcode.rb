class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775981571-g834e73"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775981571-g834e73/amp-darwin-arm64"
      sha256 "1be6be721cfcc9b414d70548932b8052b0af6c05a86a6bb67400ed2c424e4509"
    else
      url "https://static.ampcode.com/cli/0.0.1775981571-g834e73/amp-darwin-x64"
      sha256 "de4d6ea9557e7d081039efb1db48a3aeaec205333a8f3af424dfb840f5ae7e26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775981571-g834e73/amp-linux-arm64"
      sha256 "68534de94113ceffded1d317f56b8dc10549d617e46ffa51d471685cc78f56ed"
    else
      url "https://static.ampcode.com/cli/0.0.1775981571-g834e73/amp-linux-x64"
      sha256 "1ff7bcdc929bf16bdb06c7e10c866366d9045c191ac04f1431130acf8ef32dc1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
