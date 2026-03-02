class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772467738-g0a0ad1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772467738-g0a0ad1/amp-darwin-arm64"
      sha256 "307515ebb48a047d0210d197b4b54e0646cf8624e83be8615e782696a9a9ce27"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772467738-g0a0ad1/amp-darwin-x64"
      sha256 "b0eb9184f56ea5ef6fbbeaf1b89087bf5932e51ff98bca3556abf8fbe07483a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772467738-g0a0ad1/amp-linux-arm64"
      sha256 "1de4b06377a9ff5d8777955888d501fdb9a7441bd895883dc10ae8f73d7cad41"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772467738-g0a0ad1/amp-linux-x64"
      sha256 "05943da0c9f6ce8c38eb2b1c776470d924cf93f873e57fc8d0705b23615fa748"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
