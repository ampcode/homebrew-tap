class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787054623-g28e34d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787054623-g28e34d/amp-darwin-arm64"
      sha256 "1d861671dfa57b4c136156f3e998f8bd63a541e61298b81bf2b864cbd5320ef7"
    else
      url "https://static.ampcode.com/cli/0.0.1787054623-g28e34d/amp-darwin-x64"
      sha256 "3af2be8508a62da8b63dedc23802f3514a058efe257d6b7543889436d1d4971f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787054623-g28e34d/amp-linux-arm64"
      sha256 "6287f7c25724c4764c66d3df3224c689df6558a43340fcde04a28c629dc050f8"
    else
      url "https://static.ampcode.com/cli/0.0.1787054623-g28e34d/amp-linux-x64"
      sha256 "9cc0a6ee7d628f8e0c03ee7fc9d9bc9aea2c96db62a6bcb8cc2333a476b74ee6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
