class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775909092-g9fb21e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775909092-g9fb21e/amp-darwin-arm64"
      sha256 "ba3f81dd6630738df8c488f11739a508a8980a09507dff37a3fd7439cdb6db4e"
    else
      url "https://static.ampcode.com/cli/0.0.1775909092-g9fb21e/amp-darwin-x64"
      sha256 "40be1323eb1474d876d348e4a122f15328b86f7a810da28969136c35594b24ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775909092-g9fb21e/amp-linux-arm64"
      sha256 "9f177a121a281105f78cf2d1bfb41b4616f2a39d0206be520c0b009d8b8167e1"
    else
      url "https://static.ampcode.com/cli/0.0.1775909092-g9fb21e/amp-linux-x64"
      sha256 "9fe9b90c98f966f536dc230e72db83928feb8f1a8d90918535daf56c50183504"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
