class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785629945-gcfd6c8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785629945-gcfd6c8/amp-darwin-arm64"
      sha256 "68ab3324faee19fe42e370ed81bf67b98538d9e84ba7b4d5f3895aed97bd10e0"
    else
      url "https://static.ampcode.com/cli/0.0.1785629945-gcfd6c8/amp-darwin-x64"
      sha256 "0c7d212f6a2c7dd22f6e1b427e247aca275f972e1f0d4fb78b6161567bf073eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785629945-gcfd6c8/amp-linux-arm64"
      sha256 "0f8ffcbd3cfe790d950634b4723376f9ca07d564536425d57289179e6edb2887"
    else
      url "https://static.ampcode.com/cli/0.0.1785629945-gcfd6c8/amp-linux-x64"
      sha256 "18aa50985f25af31c38e06601e0af0a3f69f8facb47f9bfd2a4db90056308e43"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
