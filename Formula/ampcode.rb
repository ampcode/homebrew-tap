class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788235252-g761412"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788235252-g761412/amp-darwin-arm64"
      sha256 "6bd321404f5e8e8e3e3f2f3a1bca9b04e468f846ddbfb409e795a69960552ff1"
    else
      url "https://static.ampcode.com/cli/0.0.1788235252-g761412/amp-darwin-x64"
      sha256 "b17b31f72a48d5c78e7a05b6dd6f4aac6efece4f599672fd16f5bc4625cd96fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788235252-g761412/amp-linux-arm64"
      sha256 "4f958aa84b49aa59e3c7ee12f8fc8834dd418e5ffa0477a7b544e98cc6397cdc"
    else
      url "https://static.ampcode.com/cli/0.0.1788235252-g761412/amp-linux-x64"
      sha256 "b331ec3a975d142d78cedace25c22139c4f34db4219264bf7342c22775048d73"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
