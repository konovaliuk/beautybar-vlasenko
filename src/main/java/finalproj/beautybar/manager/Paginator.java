package finalproj.beautybar.manager;

import java.util.ArrayList;
import java.util.List;


public class Paginator {

    private int totalRecords;
    private int currentPage;
    private int maxResult;
    private int totalPages;

    private int maxNavigationPage;

    private List<Integer> navigationPages;



    private int fromRecordIndex;

    public Paginator(int countrows, int page, int maxResult, int maxNavigationPage){

        final int pageIndex = page - 1 < 0 ? 0 : page - 1;

        this.fromRecordIndex = pageIndex * maxResult;

        // Total Records
        this.totalRecords = countrows;
        this.currentPage = pageIndex + 1;
        this.maxResult = maxResult;

        if (this.totalRecords % this.maxResult == 0) {
            this.totalPages = this.totalRecords / this.maxResult;
        } else {
            this.totalPages = (this.totalRecords / this.maxResult) + 1;
        }

        this.maxNavigationPage = maxNavigationPage;

        if (maxNavigationPage < totalPages) {
            this.maxNavigationPage = maxNavigationPage;
        }

        this.calcNavigationPages();


    }

    public int calculateStartRow() {
        int fromRecordIndex = currentPage * maxResult;
        return fromRecordIndex;

    }

    private void calcNavigationPages() {

        navigationPages = new ArrayList<Integer>();

        int current = currentPage > totalPages ? totalPages : currentPage;

        int begin = current - this.maxNavigationPage / 2;
        int end = current + this.maxNavigationPage / 2;

        // The first page
        navigationPages.add(1);
        if (begin > 2) {


            // Using for '...'
            navigationPages.add(-1);
        }

        for (int i = begin; i < end; i++) {
            if (i > 1 && i < this.totalPages) {
                navigationPages.add(i);
            }
        }

        if (end < this.totalPages - 2) {

            // Using for '...'
            navigationPages.add(-1);
        }

        // The last page.
        navigationPages.add(this.totalPages);
    }

    public int getTotalPages() {
        return totalPages;
    }

    public int getTotalRecords() {
        return totalRecords;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public int getMaxResult() {
        return maxResult;
    }

    public List<Integer> getNavigationPages() {
        return navigationPages;
    }

    public int getFromRecordIndex() {
        return fromRecordIndex;
    }

}
