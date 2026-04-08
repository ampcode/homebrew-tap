class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775683162-g3e687e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775683162-g3e687e/amp-darwin-arm64"
      sha256 "0a2e52541ca6aad0f06647942ff7a27b01de336f352745505456efb00a9628a4"
    else
      url "https://static.ampcode.com/cli/0.0.1775683162-g3e687e/amp-darwin-x64"
      sha256 "272320071fe5a646550480466b6344a7ff9c82c8389056ed82134a1258c715ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775683162-g3e687e/amp-linux-arm64"
      sha256 "61cf933953e0bae8afe7a79bbb4090de62f30ea363510f8146db71c6e6211834"
    else
      url "https://static.ampcode.com/cli/0.0.1775683162-g3e687e/amp-linux-x64"
      sha256 "8a0148dee2e14aab44b60dcb7aeb56ca5e47ef3fdecf18566e25ee8d53569670"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
