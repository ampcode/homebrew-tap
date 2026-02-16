class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771226944-gd5b17a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771226944-gd5b17a/amp-darwin-arm64"
      sha256 "3979b4e6491162f541835871ecb077dfd189b3c8ea44649e44146c2a842c87ae"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771226944-gd5b17a/amp-darwin-x64"
      sha256 "0c6e86c6530d5718cf62abab17f1e8a4508c71710646767fa5cfc1e6a8d9c723"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771226944-gd5b17a/amp-linux-arm64"
      sha256 "1913b8f21ea7d0ded5028ec9f8bb2b50110b69947c6870c87e0d15fcffc119f0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771226944-gd5b17a/amp-linux-x64"
      sha256 "6a74b0a209a982b36dbf1e76c813d4176ec97fbff8d63f939206531b34084592"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
