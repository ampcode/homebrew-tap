class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769833703-g34a0e2"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769833703-g34a0e2/amp-darwin-arm64"
      sha256 "0c9418bd03bfa83d592c26a454d4afe54c4e14dbd524a7414c03f1552ce357bb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769833703-g34a0e2/amp-darwin-x64"
      sha256 "f30426d7abdcfce6eaccd2f012acac181a725336847a6b630064ce9196645bfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769833703-g34a0e2/amp-linux-arm64"
      sha256 "dcb51e694dac2ea06c16aecc517836eea26a02c0f33ba5b1aae78ec0b6e45491"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769833703-g34a0e2/amp-linux-x64"
      sha256 "ced603e4fcc1109c99ae725d20bc8d587448060c4b25e5c0a8278d9e3c42493e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
