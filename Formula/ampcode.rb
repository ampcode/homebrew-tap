class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771932903-gcbf003"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771932903-gcbf003/amp-darwin-arm64"
      sha256 "df0a0d803873e035969b12e97e6a3f93bb5173a0b11ab7f76cc9a9ce40a82d35"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771932903-gcbf003/amp-darwin-x64"
      sha256 "42905acc1815a3825bec7c6216e50b08fe2e1a8b5124f77afab938c9e6b3e6e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771932903-gcbf003/amp-linux-arm64"
      sha256 "6dcadb2422d6afb645812f0634b93d3475aebeb2d7c5e3dd9c412e15619e9422"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771932903-gcbf003/amp-linux-x64"
      sha256 "3dffda7a5668988096326be872bac9868fcb0db48918e94aba3169aa96d66d3b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
